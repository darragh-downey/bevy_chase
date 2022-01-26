#![allow(unused)]

mod enemy;
mod player;

use std::collections::HashSet;

use bevy::{prelude::*, sprite::collide_aabb::collide};

use crate::{enemy::EnemyPlugin, player::PlayerPlugin};

const PLAYER_SPRITE: &str = "p1_front.png";

const PLAYER_LAZER_SPRITE: &str = "laser_a_01.png";
const ENEMY_LAZER_SPRITE: &str = "laser_b_02.png";

const ENEMY1_SPRITE: &str = "blockerMad.png";
const ENEMY2_SPRITE: &str = "fishSwim1.png";
const ENEMY3_SPRITE: &str = "slimeWalk1.png";

const EXPLOSION_SHEET: &str = "explo_a_sheet.png";

const SCALE: f32 = 0.5;
const TIME_STEP: f32 = 1. / 60.0;
const MAX_ENEMIES: u32 = 2;
const MAX_FORMATION_MEMBERS: u32 = 2;
const PLAYER_RESPAWN_DELAY: f32 = 2.;

// Entity, Component, System, Resource

// Resources
pub struct Mats {
    player_textures: Handle<Image>,
    player_lazer_textures: Handle<Image>,
    enemy1_textures: Handle<Image>,
    enemy2_textures: Handle<Image>,
    enemy3_textures: Handle<Image>,
    enemy_lazer_textures: Handle<Image>,
    explosion: Handle<TextureAtlas>,
}

struct WinSize {
    w: f32,
    h: f32,
}

struct ActiveEnemies(u32); // manage the number of currently spawned enemies
                           // end Resources

struct PlayerState {
    on: bool,
    last_shot: f64,
}

impl Default for PlayerState {
    fn default() -> Self {
        Self {
            on: false,
            last_shot: 0.,
        }
    }
}

impl PlayerState {
    /// The player was shot
    fn shot(&mut self, time: f64) {
        self.on = false;
        self.last_shot = time;
    }

    /// The player has respawned
    fn spawned(&mut self) {
        self.on = true;
        self.last_shot = 0.;
    }
}

// Components
#[derive(Component, Default)]
struct Player;

#[derive(Component, Default)]
struct PlayerReadyFire(bool);

#[derive(Component)]
struct FromPlayer;

#[derive(Component, Default)]
struct Lazer;

#[derive(Component)]
struct Speed(f32); // tuple struct

impl Default for Speed {
    fn default() -> Self {
        Self(500.0)
    }
}

#[derive(Component)]
struct Enemy;
#[derive(Component)]
struct FromEnemy;

#[derive(Component)]
struct Explosion;

#[derive(Component)]
struct ExplosionToSpawn(Vec3);

// end Components

fn main() {
    App::new()
        .insert_resource(ClearColor(Color::rgb(0.04, 0.04, 0.04)))
        .insert_resource(WindowDescriptor {
            title: "bevy chase".to_string(),
            width: 598.0,
            height: 676.0,
            ..Default::default()
        })
        .insert_resource(ActiveEnemies(0))
        .add_plugins(DefaultPlugins)
        .add_plugin(PlayerPlugin)
        .add_plugin(EnemyPlugin)
        .add_startup_system(setup.system())
        .add_system(player_lazer_hit_enemy.system())
        .add_system(enemy_lazer_hit_player.system())
        .add_system(explosion_to_spawn.system())
        .add_system(animate_explosion.system())
        .run();
}

fn setup(
    mut commands: Commands,
    asset_server: Res<AssetServer>,
    mut materials: ResMut<Mats>,
    mut texture_atlases: ResMut<Assets<TextureAtlas>>,
    mut windows: ResMut<Windows>,
) {
    let mut window = windows.get_primary_mut().unwrap();

    // camera
    commands.spawn_bundle(OrthographicCameraBundle::new_2d());

    // create main resources such as textures so they're loaded once
    let player_path = format!("Player/{}", PLAYER_SPRITE);
    let player_lazer_path = format!("Misc/{}", PLAYER_LAZER_SPRITE);
    let enemy1_path = format!("Enemies/{}", ENEMY1_SPRITE);
    let enemy2_path = format!("Enemies/{}", ENEMY2_SPRITE);
    let enemy3_path = format!("Enemies/{}", ENEMY3_SPRITE);
    let enemy_lazer_path = format!("Misc/{}", ENEMY_LAZER_SPRITE);

    let explosion_path = format!("Misc/{}", EXPLOSION_SHEET);

    let texture_handle = asset_server.load(&explosion_path);
    let texture_atlas = TextureAtlas::from_grid(texture_handle, Vec2::new(64.0, 64.0), 4, 4);

    commands.insert_resource(Mats {
        player_textures: asset_server.load(&player_path),
        player_lazer_textures: asset_server.load(&player_lazer_path),
        enemy1_textures: asset_server.load(&enemy1_path),
        enemy2_textures: asset_server.load(&enemy2_path),
        enemy3_textures: asset_server.load(&enemy3_path),
        enemy_lazer_textures: asset_server.load(&enemy_lazer_path),

        explosion: texture_atlases.add(texture_atlas),
    });

    commands.insert_resource(WinSize {
        w: window.width(),
        h: window.height(),
    });

    // position window
    window.set_position(IVec2::new(3870, 4830));
}

fn player_lazer_hit_enemy(
    mut commands: Commands,
    mut lazer_query: Query<(Entity, &Transform, &Sprite, (With<Lazer>), With<FromPlayer>)>,
    mut enemy_query: Query<(Entity, &Transform, &Sprite, With<Enemy>)>,
    mut active_enemies: ResMut<ActiveEnemies>,
) {
    let mut enemies_blasted: HashSet<Entity> = HashSet::new();

    for (lazer_entity, lazer_transform, lazer_sprite, _, _) in lazer_query.iter_mut() {
        for (enemy_entity, enemy_transform, enemy_sprite, _) in enemy_query.iter_mut() {
            let lazer_scale = lazer_transform.scale.truncate();
            let enemy_scale = enemy_transform.scale.truncate();
            let collision = collide(
                lazer_transform.translation, // position
                lazer_sprite.custom_size.unwrap() * enemy_scale,
                enemy_transform.translation, // position
                enemy_sprite.custom_size.unwrap() * enemy_scale,
            );

            if let Some(_) = collision {
                // check set to see if this enemy has been previously killed
                if enemies_blasted.get(&enemy_entity).is_none() {
                    // remove the enemy
                    commands.entity(enemy_entity).despawn();
                    active_enemies.0 -= 1;
                }

                //remove the 'lazer'
                commands.entity(lazer_entity).despawn();

                //spawn explosion
                commands
                    .spawn()
                    .insert(ExplosionToSpawn(enemy_transform.translation.clone()));

                // add killed enemy to the set of dead enemies
                enemies_blasted.insert(enemy_entity);
            }
        }
    }
}

fn enemy_lazer_hit_player(
    mut commands: Commands,
    mut player_state: ResMut<PlayerState>,
    time: Res<Time>,
    lazer_query: Query<(Entity, &Transform, &Sprite), (With<Lazer>, With<FromEnemy>)>,
    player_query: Query<(Entity, &Transform, &Sprite), With<Player>>,
) {
    if let Ok((player_entity, player_transform, player_sprite)) = player_query.get_single() {
        let player_size =
            player_sprite.custom_size.unwrap() * player_transform.scale.truncate().abs();
        // for each enemy lazer
        for (lazer_entity, lazer_transform, lazer_sprite) in lazer_query.iter() {
            let lazer_size =
                lazer_sprite.custom_size.unwrap() * lazer_transform.scale.truncate().abs();

            // compute the collision
            let collision = collide(
                lazer_transform.translation,
                lazer_size,
                player_transform.translation,
                player_size,
            );

            // process collision
            if let Some(_) = collision {
                // remove the player
                commands.entity(player_entity).despawn();
                player_state.shot(time.seconds_since_startup());
                // remove the lazer
                commands.entity(lazer_entity).despawn();
                // spawn the explosion
                commands
                    .spawn()
                    .insert(ExplosionToSpawn(player_transform.translation.clone()));
            }
        }
    }
}

fn explosion_to_spawn(
    mut commands: Commands,
    query: Query<(Entity, &ExplosionToSpawn)>,
    materials: Res<Mats>,
) {
    for (explosion_spawn_entity, explosion_to_spawn) in query.iter() {
        commands
            .spawn_bundle(SpriteSheetBundle {
                texture_atlas: materials.explosion.clone(),
                transform: Transform {
                    translation: explosion_to_spawn.0,
                    ..Default::default()
                },
                ..Default::default()
            })
            .insert(Explosion)
            .insert(Timer::from_seconds(0.05, true));

        commands.entity(explosion_spawn_entity).despawn();
    }
}

fn animate_explosion(
    mut commands: Commands,
    time: Res<Time>,
    texture_atlases: Res<Assets<TextureAtlas>>,
    mut query: Query<(
        Entity,
        &mut Timer,
        &mut TextureAtlasSprite,
        &Handle<TextureAtlas>,
        With<Explosion>,
    )>,
) {
    for (entity, mut timer, mut sprite, texture_atlas_handle, _) in query.iter_mut() {
        timer.tick(time.delta());
        if timer.finished() {
            let texture_atlas = texture_atlases.get(texture_atlas_handle).unwrap();
            sprite.index += 1;
            if sprite.index == texture_atlas.textures.len() {
                commands.entity(entity).despawn();
            }
        }
    }
}
