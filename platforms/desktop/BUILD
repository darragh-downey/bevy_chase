load("@rules_rust//rust:rust.bzl", "rust_binary")
load("//cargo:crates.bzl", "all_crate_deps")

package(default_visibility = ["//visibility:public"])

rust_binary(
    name = "bevy_chase",
    srcs = ["src/main.rs"],
    data = ["assets/**/*.png"],
    deps = [
        "//libs/logic:logic",
        "//libs/flocks:flocks",
        ] + all_crate_deps(),
)