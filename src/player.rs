use bevy::{prelude::*, core::FixedTimestep};

use crate::{FromPlayer, Mats, WinSize, Player, PlayerReadyFire, PlayerState, Lazer, Speed, TIME_STEP, SCALE, PLAYER_RESPAWN_DELAY};

pub struct PlayerPlugin;

impl Plugin for PlayerPlugin {
    fn build(&self, app: &mut App) {
        app
        .insert_resource(PlayerState::default())
        .add_startup_stage(
            "game_setup_actors", 
            SystemStage::single(player_spawn.system()),
        )
        .add_system(player_movement.system())
        .add_system(player_fire.system())
        .add_system(lazer_movement.system())
        .add_system_set(
            SystemSet::new()
            .with_run_criteria(FixedTimestep::step(0.5))
            .with_system(player_spawn.system()),
        );
    }

    fn name(&self) -> &str {
        std::any::type_name::<Self>()
    }
}
/// Spawn the players sprite
fn player_spawn(
    mut commands: Commands,
    mut texture_atlases: ResMut<Assets<TextureAtlas>>,
    materials: Res<Mats>,
    win_size: Res<WinSize>,
    time: Res<Time>,
    mut player_state: ResMut<PlayerState>,
) {
    let now = time.seconds_since_startup();
    let last_shot = player_state.last_shot;

    // spawn a state
    if !player_state.on && (last_shot == 0. || now > last_shot + PLAYER_RESPAWN_DELAY as f64) {
        // let texture_handle = asset_server.load("Player/p1_spritesheet.png");
        // let texture_atlas = TextureAtlas::from_grid(texture_handle, Vec2::new(365.0, 98.0), 69, 71);
        // let texture_atlas_handle = texture_atlases.add(texture_atlas);
    
        // spawn a sprite
        let bottom = -win_size.h / 2.;
    
        // using a spritesheet
        //commands
        //    .spawn_bundle(SpriteSheetBundle {
        //        texture_atlas: texture_atlas_handle,
        //        transform: Transform::from_scale(Vec3::splat(2.0)),
        //        ..Default::default()
        //    })
        //    .insert(Timer::from_seconds(1, true));
    
        commands.spawn_bundle(SpriteBundle {
            transform: Transform {
                translation: Vec3::new(1., bottom + 25., 1.),
                scale: Vec3::new(0.5, 0.5, 1.),
                ..Default::default()
            },
            texture: materials.player_textures.clone(),
            ..Default::default()
        })
        .insert(Player)
        .insert(PlayerReadyFire(true))
        .insert(Speed::default());

        player_state.spawned();
    }

}

fn player_movement(
    keyboard_input: Res<Input<KeyCode>>,
    mut query: Query<(&Speed, &mut Transform, With<Player>)>,
) {
    if let Ok((speed, mut transform, _)) = query.get_single_mut() {
        let direction = if keyboard_input.pressed(KeyCode::Left) {
            -1.
        } else if keyboard_input.pressed(KeyCode::Right) {
            1.
        } else {
            0.
        };
        transform.translation.x += direction * speed.0 * TIME_STEP;
    }
}

fn player_fire(
    mut commands: Commands,
    kb: Res<Input<KeyCode>>,
    materials: Res<Mats>,
    mut query: Query<(&Transform, &mut PlayerReadyFire, With<Player>)>
) {
    if let Ok((player_tf, mut ready_fire, _)) = query.get_single_mut() {
        if ready_fire.0 && kb.pressed(KeyCode::Space) {
            let x = player_tf.translation.x;
            let y = player_tf.translation.y;

            // spawn 'lazers'
            let mut spawn_deds = |x_offset: f32|{
                commands.spawn_bundle(SpriteBundle {
                    texture: materials.player_lazer_textures.clone(),
                    transform: Transform {
                        translation: Vec3::new(x + x_offset, y + 15., 0.),
                        scale: Vec3::new(SCALE, SCALE, 1.),
                        ..Default::default()
                    },
                    ..Default::default()
                })
                .insert(Lazer)
                .insert(FromPlayer)
                .insert(Speed::default());
            };

            let x_offset = 144.0 / 4. - 5.;
            spawn_deds(x_offset);
            spawn_deds(-x_offset);

            ready_fire.0 = false;
        }

        if kb.just_released(KeyCode::Space) {
            ready_fire.0 = true;
        }
    }
}

fn lazer_movement(
    mut commands: Commands,
    win_size: Res<WinSize>,
    mut query: Query<(Entity, &Speed, &mut Transform, (With<Lazer>), With<FromPlayer>)>
) {

    for (lazer_entity, speed, mut lazer_tf, _, _) in query.iter_mut() {
        let translation = &mut lazer_tf.translation;
        translation.y += speed.0 * TIME_STEP;

        if translation.y > win_size.h {
            commands.entity(lazer_entity).despawn(); // remove entity when it goes out of bounds (top of the window)
        }
    }

}

fn animate_sprite_system(
    time: Res<Time>,
    texture_atlases: Res<Assets<TextureAtlas>>,
    mut query: Query<(&mut Timer, &mut TextureAtlasSprite, &Handle<TextureAtlas>)>,
) {
    for (mut timer, mut sprite, texture_atlas_handle) in query.iter_mut() {
        timer.tick(time.delta());
        if timer.finished() {
            let texture_atlas = texture_atlases.get(texture_atlas_handle).unwrap();
            sprite.index = (sprite.index + 1) % texture_atlas.textures.len();
        }
    }
}
