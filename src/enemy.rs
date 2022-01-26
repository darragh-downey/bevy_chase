use std::f32::consts::PI;

use bevy::{core::FixedTimestep, prelude::*};
use rand::{Rng, thread_rng};
use crate::{ActiveEnemies, Enemy, Mats, SCALE, TIME_STEP, MAX_FORMATION_MEMBERS, WinSize, Lazer, FromEnemy, Speed};

pub struct EnemyPlugin;


#[derive(Default, Clone, Component)]
struct Formation {
    start: (f32, f32),
    radius: (f32, f32),
    offset: (f32, f32),
    angle: f32,
    group_id: u32,
}

#[derive(Default, Clone)]
struct FormationMaker {
    group_seq: u32,
    current_formation: Option<Formation>,
    current_formation_members: u32,
}

impl FormationMaker {
    fn make(&mut self, win_size: &WinSize) -> Formation {
        match (
            &self.current_formation,
            self.current_formation_members >= MAX_FORMATION_MEMBERS
        ) {
            // if first formation or prev is full
            (None, _) | (_, true) => {
                // compute the start x,y position
                let mut rng = thread_rng();
                let h_span = win_size.h / 2. - 100.;
                let w_span = win_size.w / 4.;
                let x = if rng.gen::<bool>() {
                    win_size.w
                } else { 
                    -win_size.w
                };
                let y = rng.gen_range(-h_span..h_span) as f32;
                let start = (x, y);

                // compute the offset and radius
                let offset = (rng.gen_range(-w_span..w_span), rng.gen_range(0.0..h_span));
                let radius = (rng.gen_range(80.0..150.), 100.);
                let angle: f32 = (y - offset.0).atan2(x - offset.1);

                // create new formation
                self.group_seq += 1;
                let group_id = self.group_seq;
                let formation = Formation {
                    start,
                    offset,
                    radius,
                    angle,
                    group_id,
                };

                // close, set and return
                self.current_formation = Some(formation.clone());
                self.current_formation_members = 1;
                formation
            }

            // if still within the formation count
            (Some(template), false) => {
                self.current_formation_members += 1;
                template.clone()
            }
        }
    }
}

impl Plugin for EnemyPlugin {
    fn build(&self, app: &mut App) {
        app
        .insert_resource(FormationMaker::default())
        .add_system(enemy_lazer_movement.system())
        .add_system(enemy_movement.system())
        .add_system_set(
            SystemSet::new()
                .with_run_criteria(FixedTimestep::step(1.0))
                .with_system(enemy_spawn.system()),
        )
        .add_system_set(
            SystemSet::new()
            .with_run_criteria(FixedTimestep::step(0.9))
            .with_system(enemy_fire.system()),
        );
    }

    fn name(&self) -> &str {
        std::any::type_name::<Self>()
    }
}

fn enemy_spawn(
    mut commands: Commands,
    mut active_enemies: ResMut<ActiveEnemies>,
    mut formation_maker: ResMut<FormationMaker>,
    win_size: Res<WinSize>,
    materials: Res<Mats>,
) {
    if active_enemies.0 < 1 {
        // get the formation and start pos x,y
        let formation = formation_maker.make(&win_size);
        let (x, y) = formation.start;

        // spawn enemy
        commands.spawn_bundle(SpriteBundle {
            texture: materials.enemy1_textures.clone(),
            transform: Transform {
                translation: Vec3::new(x, y, 10.0),
                scale: Vec3::new(SCALE, SCALE, 0.5),
                ..Default::default()
            },
            ..Default::default()
        })
        .insert(Enemy)
        .insert(Speed::default())
        .insert(formation);

        active_enemies.0 += 1;
    }
}

fn enemy_movement(
    time: Res<Time>,
    mut query: Query<(&mut Transform, &Speed, &mut Formation), With<Enemy>>
) {
    // for each enemy
    for (mut tf, speed, mut formation) in query.iter_mut() {
        let max_distance = TIME_STEP * speed.0;
        let x_org = tf.translation.x;
        let y_org = tf.translation.y;

        // get the ellipse
        let (x_offset, y_offset) = formation.offset;
        let (x_radius, y_radius) = formation.radius;

        // compute the next angle
        let dir = if formation.start.0 > 0. { 1. } else { -1. }; // coming from the left go clockwise else go anti-clockwise
        let angle = formation.angle + dir * speed.0 * TIME_STEP / (x_radius.min(y_radius) * PI / 2.);

        // calculate destination
        let x_dst = x_radius * angle.cos() + x_offset;
        let y_dst = y_radius * angle.sin() + y_offset;

        // calculate the distance
        let dx = x_org - x_dst;
        let dy = y_org - y_dst;
        let distance = (dx * dx + dy * dy).sqrt();
        let distance_ratio = if distance == 0. {
            0.
        } else {
            max_distance / distance
        };

        // calculate the final x/y (making sure not to overshoot)
        let x = x_org * distance_ratio;
        let x = if dx > 0. { x.max(x_dst) } else { x.min(x_dst) };

        let y = y_org * distance_ratio;
        let y = if dy > 0. { y.max(y_dst) } else { y.min(y_dst) };

        /// start rotating the formation angle only when the sprites
        /// are on or close to the destination
        if distance < max_distance * speed.0 / 20. {
            formation.angle = angle;
        }

        // apply to transformation
        tf.translation.x = x;
        tf.translation.y = y;
    }

}


fn enemy_fire(
    mut commands: Commands,
    materials: Res<Mats>,
    enemy_query: Query<&Transform, With<Enemy>>
) {
    // for each enemy shoot lazer
    for &transformation in enemy_query.iter() {
        let x = transformation.translation.x;
        let y = transformation.translation.y;

        commands
        .spawn_bundle(SpriteBundle{
            texture: materials.enemy_lazer_textures.clone(),
            transform: Transform {
                translation: Vec3::new(x, y - 15., 0.),
                scale: Vec3::new(SCALE, SCALE, 1.),
                ..Default::default()
            },
            ..Default::default()
        })
        .insert(Lazer)
        .insert(FromEnemy)
        .insert(Speed::default());
    }
}

fn enemy_lazer_movement(
    mut commands: Commands,
    win_size: Res<WinSize>,
    mut lazer_query: Query<(Entity, &Speed, &mut Transform), (With<Lazer>, With<FromEnemy>)>,
) {

    // for each lazer from enemy
    for (entity, speed, mut transformation) in lazer_query.iter_mut() {
        transformation.translation.y -= speed.0 * TIME_STEP;
        if transformation.translation.y < -win_size.h / 2. - 50. {
            commands.entity(entity).despawn();
        }
    }

}