package(default_visibility = ["//visibility:public"])

# https://bazelbuild.github.io/rules_rust/defs.html#rust_test
load("@rules_rust//rust:rust.bzl", "rust_library", "rust_test")

rust_library(
    name = "flocks",
    edition = "2021",
    srcs = ["src/lib.rs"],
)

# To run the test with `bazel build //utils:utils_lib_test` from WORKSPACE.bazel/root level
rust_test(
    name = "flocks_test",
    # crate = ":reader",
    # You may add other deps that are specific to the test configuration
    deps = [":flocks"]
)