# Bevy Chase

## Intro

Based off [rust-invaders](https://github.com/jeremychone-channel/rust-invaders) by [@jeremychone](https://github.com/).

A simple demo on how to you *could* use Bazel to build for multiple build targets now that [Bevy](https://bevyengine.org/) supports WASM.

## Project Structure

Currently *fairly* fluid... but I have a fair idea of where things "should go":tm:

### Assets

Very simple, generally shared across platforms, stick them in an `assets` directory at the root of the project.

### Libraries

There are some shared behaviors that the different build targets should have. What point is there in a game that behaves differently depending on the target it runs on...

On top of that, there are behaviors that are not specific to this 'game' which could be shared as a library, such as a `boid` implementation or `enemy AI`.

These should all live in a `libs` directory and should be shared as a "library" by Bazel to the other aspects of the monorepo...

**I hate the term AI these days outside of gaming... It's machine learning... Call me when your AI passes the Turing test proper*

*Rant over...*

### Platforms

I was orginally looking at `targets` as the name of the parent directory for the various build targets, although it was too close to `target` for my liking, so I've christened it `platforms`.

Under `platforms` we'll obviously have build targets [and directories] for:

* Android
* iOs
* Linux
* MacOs
* Windows
* WASM

WASM will be a special case as it is currently single-threaded for the time being...

Android and iOS will vary greatly from the desktop OSes.

The desktop OSes may just be merged.

## TODOs

A short (high-level) TODO list for me to implement; scratch each one out as I go...

* [ ] Android
* [ ] iOS
* [ ] Linux
* [ ] Mac
* [ ] Windows
* [ ] WASM
* [ ] Boids (candidate for shared lib)
* [ ] Cloudflare-workers (single threaded only for now <https://blog.cloudflare.com/wrangler-v2-beta/>)
* [ ] Basic running animation
* [x] Basic shooting animation (inherited)
