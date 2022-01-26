# https://bazelbuild.github.io/rules_rust/defs.html#rust_test
load("@rules_rust//rust:rust.bzl", "rust_library", "rust_test")
load("//remote/cargo_workspace/cargo:crates.bzl", "crates_deps")

package(default_visibility = ["//visibility:public"])

rust_library(
    name = "logic",
    edition = "2021",
    srcs = [
        "src/enemy.rs",
        "src/player.rs",
        ],
    # TODO: test flocks/boids integration ":flocks"
    deps = crate_deps([
        "bevy",
        "rand",
    ]),
)

# To run the test with `bazel build //utils:utils_lib_test` from WORKSPACE.bazel/root level
rust_test(
    name = "logic_test",
    # crate = ":reader",
    # You may add other deps that are specific to the test configuration
    deps = [":logic"]
)