"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def cargo_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "cargo__ab_glyph__0_2_13",
        url = "https://crates.io/api/v1/crates/ab_glyph/0.2.13/download",
        type = "tar.gz",
        sha256 = "61caed9aec6daeee1ea38ccf5fb225e4f96c1eeead1b4a5c267324a63cf02326",
        strip_prefix = "ab_glyph-0.2.13",
        build_file = Label("//cargo/remote:BUILD.ab_glyph-0.2.13.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ab_glyph_rasterizer__0_1_5",
        url = "https://crates.io/api/v1/crates/ab_glyph_rasterizer/0.1.5/download",
        type = "tar.gz",
        sha256 = "a13739d7177fbd22bb0ed28badfff9f372f8bef46c863db4e1c6248f6b223b6e",
        strip_prefix = "ab_glyph_rasterizer-0.1.5",
        build_file = Label("//cargo/remote:BUILD.ab_glyph_rasterizer-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__adler32__1_2_0",
        url = "https://crates.io/api/v1/crates/adler32/1.2.0/download",
        type = "tar.gz",
        sha256 = "aae1277d39aeec15cb388266ecc24b11c80469deae6067e17a1a7aa9e5c1f234",
        strip_prefix = "adler32-1.2.0",
        build_file = Label("//cargo/remote:BUILD.adler32-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ahash__0_7_6",
        url = "https://crates.io/api/v1/crates/ahash/0.7.6/download",
        type = "tar.gz",
        sha256 = "fcb51a0695d8f838b1ee009b3fbf66bda078cd64590202a864a8f3e8c4315c47",
        strip_prefix = "ahash-0.7.6",
        build_file = Label("//cargo/remote:BUILD.ahash-0.7.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__aho_corasick__0_7_18",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.7.18/download",
        type = "tar.gz",
        sha256 = "1e37cfd5e7657ada45f742d6e99ca5788580b5c529dc78faf11ece6dc702656f",
        strip_prefix = "aho-corasick-0.7.18",
        build_file = Label("//cargo/remote:BUILD.aho-corasick-0.7.18.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__alsa__0_5_0",
        url = "https://crates.io/api/v1/crates/alsa/0.5.0/download",
        type = "tar.gz",
        sha256 = "75c4da790adcb2ce5e758c064b4f3ec17a30349f9961d3e5e6c9688b052a9e18",
        strip_prefix = "alsa-0.5.0",
        build_file = Label("//cargo/remote:BUILD.alsa-0.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__alsa_sys__0_3_1",
        url = "https://crates.io/api/v1/crates/alsa-sys/0.3.1/download",
        type = "tar.gz",
        sha256 = "db8fee663d06c4e303404ef5f40488a53e062f89ba8bfed81f42325aafad1527",
        strip_prefix = "alsa-sys-0.3.1",
        build_file = Label("//cargo/remote:BUILD.alsa-sys-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__android_log_sys__0_2_0",
        url = "https://crates.io/api/v1/crates/android_log-sys/0.2.0/download",
        type = "tar.gz",
        sha256 = "85965b6739a430150bdd138e2374a98af0c3ee0d030b3bb7fc3bddff58d0102e",
        strip_prefix = "android_log-sys-0.2.0",
        build_file = Label("//cargo/remote:BUILD.android_log-sys-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__android_logger__0_10_1",
        url = "https://crates.io/api/v1/crates/android_logger/0.10.1/download",
        type = "tar.gz",
        sha256 = "d9ed09b18365ed295d722d0b5ed59c01b79a826ff2d2a8f73d5ecca8e6fb2f66",
        strip_prefix = "android_logger-0.10.1",
        build_file = Label("//cargo/remote:BUILD.android_logger-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ansi_term__0_12_1",
        url = "https://crates.io/api/v1/crates/ansi_term/0.12.1/download",
        type = "tar.gz",
        sha256 = "d52a9bb7ec0cf484c551830a7ce27bd20d67eac647e1befb56b0be4ee39a55d2",
        strip_prefix = "ansi_term-0.12.1",
        build_file = Label("//cargo/remote:BUILD.ansi_term-0.12.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__anyhow__1_0_53",
        url = "https://crates.io/api/v1/crates/anyhow/1.0.53/download",
        type = "tar.gz",
        sha256 = "94a45b455c14666b85fc40a019e8ab9eb75e3a124e05494f5397122bc9eb06e0",
        strip_prefix = "anyhow-1.0.53",
        build_file = Label("//cargo/remote:BUILD.anyhow-1.0.53.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__approx__0_5_1",
        url = "https://crates.io/api/v1/crates/approx/0.5.1/download",
        type = "tar.gz",
        sha256 = "cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6",
        strip_prefix = "approx-0.5.1",
        build_file = Label("//cargo/remote:BUILD.approx-0.5.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__arrayvec__0_7_2",
        url = "https://crates.io/api/v1/crates/arrayvec/0.7.2/download",
        type = "tar.gz",
        sha256 = "8da52d66c7071e2e3fa2a1e5c6d088fec47b593032b254f5e980de8ea54454d6",
        strip_prefix = "arrayvec-0.7.2",
        build_file = Label("//cargo/remote:BUILD.arrayvec-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ash__0_34_0_1_2_203",
        url = "https://crates.io/api/v1/crates/ash/0.34.0+1.2.203/download",
        type = "tar.gz",
        sha256 = "b0f780da53d0063880d45554306489f09dd8d1bda47688b4a57bc579119356df",
        strip_prefix = "ash-0.34.0+1.2.203",
        build_file = Label("//cargo/remote:BUILD.ash-0.34.0+1.2.203.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__async_channel__1_6_1",
        url = "https://crates.io/api/v1/crates/async-channel/1.6.1/download",
        type = "tar.gz",
        sha256 = "2114d64672151c0c5eaa5e131ec84a74f06e1e559830dabba01ca30605d66319",
        strip_prefix = "async-channel-1.6.1",
        build_file = Label("//cargo/remote:BUILD.async-channel-1.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__async_executor__1_4_1",
        url = "https://crates.io/api/v1/crates/async-executor/1.4.1/download",
        type = "tar.gz",
        sha256 = "871f9bb5e0a22eeb7e8cf16641feb87c9dc67032ccf8ff49e772eb9941d3a965",
        strip_prefix = "async-executor-1.4.1",
        build_file = Label("//cargo/remote:BUILD.async-executor-1.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__async_task__4_0_3",
        url = "https://crates.io/api/v1/crates/async-task/4.0.3/download",
        type = "tar.gz",
        sha256 = "e91831deabf0d6d7ec49552e489aed63b7456a7a3c46cff62adad428110b0af0",
        strip_prefix = "async-task-4.0.3",
        build_file = Label("//cargo/remote:BUILD.async-task-4.0.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__autocfg__1_0_1",
        url = "https://crates.io/api/v1/crates/autocfg/1.0.1/download",
        type = "tar.gz",
        sha256 = "cdb031dd78e28731d87d56cc8ffef4a8f36ca26c38fe2de700543e627f8a464a",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//cargo/remote:BUILD.autocfg-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__base_x__0_2_8",
        url = "https://crates.io/api/v1/crates/base-x/0.2.8/download",
        type = "tar.gz",
        sha256 = "a4521f3e3d031370679b3b140beb36dfe4801b09ac77e30c61941f97df3ef28b",
        strip_prefix = "base-x-0.2.8",
        build_file = Label("//cargo/remote:BUILD.base-x-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__base64__0_13_0",
        url = "https://crates.io/api/v1/crates/base64/0.13.0/download",
        type = "tar.gz",
        sha256 = "904dfeac50f3cdaba28fc6f57fdcddb75f49ed61346676a78c4ffe55877802fd",
        strip_prefix = "base64-0.13.0",
        build_file = Label("//cargo/remote:BUILD.base64-0.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy/0.6.0/download",
        type = "tar.gz",
        sha256 = "b77ad2987710ed960746c43813ad8c103db5c4c090f5cbc9c32c0a90a91bc599",
        strip_prefix = "bevy-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_crevice_derive__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy-crevice-derive/0.6.0/download",
        type = "tar.gz",
        sha256 = "d4cf594c9277eb1e426f45a00eaf70aa9ffdf479268d7e4538270263811e20bc",
        strip_prefix = "bevy-crevice-derive-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy-crevice-derive-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_app__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_app/0.6.0/download",
        type = "tar.gz",
        sha256 = "58fe3d3f4140fb11cd294f43be7cb66a5783d9277ba0270743e2860e32b25ab5",
        strip_prefix = "bevy_app-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_app-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_asset__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_asset/0.6.0/download",
        type = "tar.gz",
        sha256 = "eb68a0259e2f857a32c4f05eb9b9447db1072297c61864ad07d02fea1838bde9",
        strip_prefix = "bevy_asset-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_asset-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_audio__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_audio/0.6.0/download",
        type = "tar.gz",
        sha256 = "0291276cf0dd1dbbf3393112d0e0276e4110f633965542123b830d8dae44fff3",
        strip_prefix = "bevy_audio-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_audio-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_core__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_core/0.6.0/download",
        type = "tar.gz",
        sha256 = "1c156430a5312c04a1b25fa434eeeab6349a41c6bb96ea0385406d53b3c43658",
        strip_prefix = "bevy_core-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_core-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_core_pipeline__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_core_pipeline/0.6.0/download",
        type = "tar.gz",
        sha256 = "5b422dca94195c904964ab21bc4557fbd11f692c299d46e38364715ac931841e",
        strip_prefix = "bevy_core_pipeline-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_core_pipeline-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_crevice__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_crevice/0.6.0/download",
        type = "tar.gz",
        sha256 = "06d3eeb3237df793e8e01a110ee71824eacd15421821f9b175f3bafca864614c",
        strip_prefix = "bevy_crevice-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_crevice-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_derive__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_derive/0.6.0/download",
        type = "tar.gz",
        sha256 = "918dc0dff01e8b4e8f989db89d74fd4042810ea80a70642d0459b3c265995e59",
        strip_prefix = "bevy_derive-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_derive-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_diagnostic__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_diagnostic/0.6.0/download",
        type = "tar.gz",
        sha256 = "adbe98f48873d4b20f6479723de18d957f4bc00c653efd36c245e6a66d6e8b71",
        strip_prefix = "bevy_diagnostic-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_diagnostic-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_ecs__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_ecs/0.6.0/download",
        type = "tar.gz",
        sha256 = "6b182092396e6c2caf5ab30d738511fcd382628aa86ef35878d28fabb325c933",
        strip_prefix = "bevy_ecs-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_ecs-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_ecs_macros__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_ecs_macros/0.6.0/download",
        type = "tar.gz",
        sha256 = "c7e9e664b3ea45cfc9ab3251ee0255dfa6410f675b3a405e7bac8e59b2d76aa9",
        strip_prefix = "bevy_ecs_macros-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_ecs_macros-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_gilrs__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_gilrs/0.6.0/download",
        type = "tar.gz",
        sha256 = "b457f720b1c54ede34afd6007beae3708503c0dd7a4ab4b416e36cb8bbd05ac1",
        strip_prefix = "bevy_gilrs-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_gilrs-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_gltf__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_gltf/0.6.0/download",
        type = "tar.gz",
        sha256 = "34e4711f4f77542dccd59eec249c98f02e34e28a25ee079c14cd351061d08e5c",
        strip_prefix = "bevy_gltf-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_gltf-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_input__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_input/0.6.0/download",
        type = "tar.gz",
        sha256 = "33989693efa636960dd40e540029ed7b7bc1af2f3eef26c009555b5e2a4e185a",
        strip_prefix = "bevy_input-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_input-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_internal__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_internal/0.6.0/download",
        type = "tar.gz",
        sha256 = "f92af28d95bba80d11840c24fa4ce8ff84ae27af1def2f5cf8a6891acce5d714",
        strip_prefix = "bevy_internal-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_internal-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_log__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_log/0.6.0/download",
        type = "tar.gz",
        sha256 = "9bf0083e72bf76cbfa6607311ac6baef2f4f7c9306c35942cece8c0589cd3e5e",
        strip_prefix = "bevy_log-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_log-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_macro_utils__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_macro_utils/0.6.0/download",
        type = "tar.gz",
        sha256 = "57cf90b3b67606d0818cdac6c9134eb66fa174959977a4abba893364a571a7cd",
        strip_prefix = "bevy_macro_utils-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_macro_utils-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_math__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_math/0.6.0/download",
        type = "tar.gz",
        sha256 = "6b0f9ebf2ef80a8fff3e5dca817594071004048cd089e72b9a1bf4e494b66112",
        strip_prefix = "bevy_math-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_math-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_pbr__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_pbr/0.6.0/download",
        type = "tar.gz",
        sha256 = "1f5c00c4d1d806a93caf554c28ca9708cc6717463a63dd400e70b106918bd32c",
        strip_prefix = "bevy_pbr-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_pbr-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_reflect__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_reflect/0.6.0/download",
        type = "tar.gz",
        sha256 = "d84ce8cbd484a39d67171831eaf72c20d2684de71f1e9d79333c8dd6d6f3ebca",
        strip_prefix = "bevy_reflect-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_reflect-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_reflect_derive__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_reflect_derive/0.6.0/download",
        type = "tar.gz",
        sha256 = "7af3100febf44583a7c052d1469fbdb411f56aa85729333a0ac106a016bd379c",
        strip_prefix = "bevy_reflect_derive-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_reflect_derive-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_render__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_render/0.6.0/download",
        type = "tar.gz",
        sha256 = "4175b9afe0963d04d485980438f631c1e2b02d3a57f58503b8e9239c44d5c2bf",
        strip_prefix = "bevy_render-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_render-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_scene__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_scene/0.6.0/download",
        type = "tar.gz",
        sha256 = "21eb2b01e4d1b074c75ea59a92409739cac24b56b1c723491ef80936d50e95df",
        strip_prefix = "bevy_scene-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_scene-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_sprite__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_sprite/0.6.0/download",
        type = "tar.gz",
        sha256 = "66439831ff57c11c7fb2692e7ccf8d0551f4368a9908908d3c38f2da53115b33",
        strip_prefix = "bevy_sprite-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_sprite-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_tasks__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_tasks/0.6.0/download",
        type = "tar.gz",
        sha256 = "9dc4bce7f4cddbb489636092f52478b103dc26ee8526c585289bbdd9c0d0a99f",
        strip_prefix = "bevy_tasks-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_tasks-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_text__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_text/0.6.0/download",
        type = "tar.gz",
        sha256 = "233c4bb933435e8e6c34a1310317fd7f8c6617526270de572e643816070b236a",
        strip_prefix = "bevy_text-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_text-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_transform__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_transform/0.6.0/download",
        type = "tar.gz",
        sha256 = "9974c494f9cc721df46d2ba27c6a8df2a955ed8360a23adabd2bd66d1f73fa8f",
        strip_prefix = "bevy_transform-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_transform-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_ui__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_ui/0.6.0/download",
        type = "tar.gz",
        sha256 = "9f30583acee76b40bf1961ece57887ba067becc1e4694ef5dddf18ce2c038886",
        strip_prefix = "bevy_ui-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_ui-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_utils__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_utils/0.6.0/download",
        type = "tar.gz",
        sha256 = "252f6674aa3ba68bacfec506b91570a3cc206ad09b7ef4b23661959ef0246396",
        strip_prefix = "bevy_utils-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_utils-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_window__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_window/0.6.0/download",
        type = "tar.gz",
        sha256 = "9f4b52b766baf565e96f24f61dbc51bc85151f23202fed2b3650769f2edd0b21",
        strip_prefix = "bevy_window-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_window-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bevy_winit__0_6_0",
        url = "https://crates.io/api/v1/crates/bevy_winit/0.6.0/download",
        type = "tar.gz",
        sha256 = "699c927ef5422a09b71134e5907497117210fe5063676fc7250b7551926f4bba",
        strip_prefix = "bevy_winit-0.6.0",
        build_file = Label("//cargo/remote:BUILD.bevy_winit-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bindgen__0_56_0",
        url = "https://crates.io/api/v1/crates/bindgen/0.56.0/download",
        type = "tar.gz",
        sha256 = "2da379dbebc0b76ef63ca68d8fc6e71c0f13e59432e0987e508c1820e6ab5239",
        strip_prefix = "bindgen-0.56.0",
        build_file = Label("//cargo/remote:BUILD.bindgen-0.56.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bit_set__0_5_2",
        url = "https://crates.io/api/v1/crates/bit-set/0.5.2/download",
        type = "tar.gz",
        sha256 = "6e11e16035ea35e4e5997b393eacbf6f63983188f7a2ad25bfb13465f5ad59de",
        strip_prefix = "bit-set-0.5.2",
        build_file = Label("//cargo/remote:BUILD.bit-set-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bit_vec__0_6_3",
        url = "https://crates.io/api/v1/crates/bit-vec/0.6.3/download",
        type = "tar.gz",
        sha256 = "349f9b6a179ed607305526ca489b34ad0a41aed5f7980fa90eb03160b69598fb",
        strip_prefix = "bit-vec-0.6.3",
        build_file = Label("//cargo/remote:BUILD.bit-vec-0.6.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bitflags__1_3_2",
        url = "https://crates.io/api/v1/crates/bitflags/1.3.2/download",
        type = "tar.gz",
        sha256 = "bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a",
        strip_prefix = "bitflags-1.3.2",
        build_file = Label("//cargo/remote:BUILD.bitflags-1.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__block__0_1_6",
        url = "https://crates.io/api/v1/crates/block/0.1.6/download",
        type = "tar.gz",
        sha256 = "0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a",
        strip_prefix = "block-0.1.6",
        build_file = Label("//cargo/remote:BUILD.block-0.1.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bumpalo__3_9_1",
        url = "https://crates.io/api/v1/crates/bumpalo/3.9.1/download",
        type = "tar.gz",
        sha256 = "a4a45a46ab1f2412e53d3a0ade76ffad2025804294569aae387231a0cd6e0899",
        strip_prefix = "bumpalo-3.9.1",
        build_file = Label("//cargo/remote:BUILD.bumpalo-3.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bytemuck__1_7_3",
        url = "https://crates.io/api/v1/crates/bytemuck/1.7.3/download",
        type = "tar.gz",
        sha256 = "439989e6b8c38d1b6570a384ef1e49c8848128f5a97f3914baef02920842712f",
        strip_prefix = "bytemuck-1.7.3",
        build_file = Label("//cargo/remote:BUILD.bytemuck-1.7.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bytemuck_derive__1_0_1",
        url = "https://crates.io/api/v1/crates/bytemuck_derive/1.0.1/download",
        type = "tar.gz",
        sha256 = "8e215f8c2f9f79cb53c8335e687ffd07d5bfcb6fe5fc80723762d0be46e7cc54",
        strip_prefix = "bytemuck_derive-1.0.1",
        build_file = Label("//cargo/remote:BUILD.bytemuck_derive-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__byteorder__1_4_3",
        url = "https://crates.io/api/v1/crates/byteorder/1.4.3/download",
        type = "tar.gz",
        sha256 = "14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610",
        strip_prefix = "byteorder-1.4.3",
        build_file = Label("//cargo/remote:BUILD.byteorder-1.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__bytes__1_1_0",
        url = "https://crates.io/api/v1/crates/bytes/1.1.0/download",
        type = "tar.gz",
        sha256 = "c4872d67bab6358e59559027aa3b9157c53d9358c51423c17554809a8858e0f8",
        strip_prefix = "bytes-1.1.0",
        build_file = Label("//cargo/remote:BUILD.bytes-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cache_padded__1_2_0",
        url = "https://crates.io/api/v1/crates/cache-padded/1.2.0/download",
        type = "tar.gz",
        sha256 = "c1db59621ec70f09c5e9b597b220c7a2b43611f4710dc03ceb8748637775692c",
        strip_prefix = "cache-padded-1.2.0",
        build_file = Label("//cargo/remote:BUILD.cache-padded-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cargo_manifest__0_2_6",
        url = "https://crates.io/api/v1/crates/cargo-manifest/0.2.6/download",
        type = "tar.gz",
        sha256 = "af6d65c7592744998c67947ec771c62687c76f00179a83ffd563c0482046bb98",
        strip_prefix = "cargo-manifest-0.2.6",
        build_file = Label("//cargo/remote:BUILD.cargo-manifest-0.2.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cc__1_0_72",
        url = "https://crates.io/api/v1/crates/cc/1.0.72/download",
        type = "tar.gz",
        sha256 = "22a9137b95ea06864e018375b72adfb7db6e6f68cfc8df5a04d00288050485ee",
        strip_prefix = "cc-1.0.72",
        build_file = Label("//cargo/remote:BUILD.cc-1.0.72.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cesu8__1_1_0",
        url = "https://crates.io/api/v1/crates/cesu8/1.1.0/download",
        type = "tar.gz",
        sha256 = "6d43a04d8753f35258c91f8ec639f792891f748a1edbd759cf1dcea3382ad83c",
        strip_prefix = "cesu8-1.1.0",
        build_file = Label("//cargo/remote:BUILD.cesu8-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cexpr__0_4_0",
        url = "https://crates.io/api/v1/crates/cexpr/0.4.0/download",
        type = "tar.gz",
        sha256 = "f4aedb84272dbe89af497cf81375129abda4fc0a9e7c5d317498c15cc30c0d27",
        strip_prefix = "cexpr-0.4.0",
        build_file = Label("//cargo/remote:BUILD.cexpr-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cfg_if__0_1_10",
        url = "https://crates.io/api/v1/crates/cfg-if/0.1.10/download",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//cargo/remote:BUILD.cfg-if-0.1.10.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//cargo/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cfg_aliases__0_1_1",
        url = "https://crates.io/api/v1/crates/cfg_aliases/0.1.1/download",
        type = "tar.gz",
        sha256 = "fd16c4719339c4530435d38e511904438d07cce7950afa3718a84ac36c10e89e",
        strip_prefix = "cfg_aliases-0.1.1",
        build_file = Label("//cargo/remote:BUILD.cfg_aliases-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__clang_sys__1_3_0",
        url = "https://crates.io/api/v1/crates/clang-sys/1.3.0/download",
        type = "tar.gz",
        sha256 = "fa66045b9cb23c2e9c1520732030608b02ee07e5cfaa5a521ec15ded7fa24c90",
        strip_prefix = "clang-sys-1.3.0",
        build_file = Label("//cargo/remote:BUILD.clang-sys-1.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cocoa__0_24_0",
        url = "https://crates.io/api/v1/crates/cocoa/0.24.0/download",
        type = "tar.gz",
        sha256 = "6f63902e9223530efb4e26ccd0cf55ec30d592d3b42e21a28defc42a9586e832",
        strip_prefix = "cocoa-0.24.0",
        build_file = Label("//cargo/remote:BUILD.cocoa-0.24.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cocoa_foundation__0_1_0",
        url = "https://crates.io/api/v1/crates/cocoa-foundation/0.1.0/download",
        type = "tar.gz",
        sha256 = "7ade49b65d560ca58c403a479bb396592b155c0185eada742ee323d1d68d6318",
        strip_prefix = "cocoa-foundation-0.1.0",
        build_file = Label("//cargo/remote:BUILD.cocoa-foundation-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__codespan_reporting__0_11_1",
        url = "https://crates.io/api/v1/crates/codespan-reporting/0.11.1/download",
        type = "tar.gz",
        sha256 = "3538270d33cc669650c4b093848450d380def10c331d38c768e34cac80576e6e",
        strip_prefix = "codespan-reporting-0.11.1",
        build_file = Label("//cargo/remote:BUILD.codespan-reporting-0.11.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__color_quant__1_1_0",
        url = "https://crates.io/api/v1/crates/color_quant/1.1.0/download",
        type = "tar.gz",
        sha256 = "3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b",
        strip_prefix = "color_quant-1.1.0",
        build_file = Label("//cargo/remote:BUILD.color_quant-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__combine__4_6_3",
        url = "https://crates.io/api/v1/crates/combine/4.6.3/download",
        type = "tar.gz",
        sha256 = "50b727aacc797f9fc28e355d21f34709ac4fc9adecfe470ad07b8f4464f53062",
        strip_prefix = "combine-4.6.3",
        build_file = Label("//cargo/remote:BUILD.combine-4.6.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__concurrent_queue__1_2_2",
        url = "https://crates.io/api/v1/crates/concurrent-queue/1.2.2/download",
        type = "tar.gz",
        sha256 = "30ed07550be01594c6026cff2a1d7fe9c8f683caa798e12b68694ac9e88286a3",
        strip_prefix = "concurrent-queue-1.2.2",
        build_file = Label("//cargo/remote:BUILD.concurrent-queue-1.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__console_error_panic_hook__0_1_7",
        url = "https://crates.io/api/v1/crates/console_error_panic_hook/0.1.7/download",
        type = "tar.gz",
        sha256 = "a06aeb73f470f66dcdbf7223caeebb85984942f22f1adb2a088cf9668146bbbc",
        strip_prefix = "console_error_panic_hook-0.1.7",
        build_file = Label("//cargo/remote:BUILD.console_error_panic_hook-0.1.7.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__copyless__0_1_5",
        url = "https://crates.io/api/v1/crates/copyless/0.1.5/download",
        type = "tar.gz",
        sha256 = "a2df960f5d869b2dd8532793fde43eb5427cceb126c929747a26823ab0eeb536",
        strip_prefix = "copyless-0.1.5",
        build_file = Label("//cargo/remote:BUILD.copyless-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_foundation__0_6_4",
        url = "https://crates.io/api/v1/crates/core-foundation/0.6.4/download",
        type = "tar.gz",
        sha256 = "25b9e03f145fd4f2bf705e07b900cd41fc636598fe5dc452fd0db1441c3f496d",
        strip_prefix = "core-foundation-0.6.4",
        build_file = Label("//cargo/remote:BUILD.core-foundation-0.6.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_foundation__0_7_0",
        url = "https://crates.io/api/v1/crates/core-foundation/0.7.0/download",
        type = "tar.gz",
        sha256 = "57d24c7a13c43e870e37c1556b74555437870a04514f7685f5b354e090567171",
        strip_prefix = "core-foundation-0.7.0",
        build_file = Label("//cargo/remote:BUILD.core-foundation-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_foundation__0_9_2",
        url = "https://crates.io/api/v1/crates/core-foundation/0.9.2/download",
        type = "tar.gz",
        sha256 = "6888e10551bb93e424d8df1d07f1a8b4fceb0001a3a4b048bfc47554946f47b3",
        strip_prefix = "core-foundation-0.9.2",
        build_file = Label("//cargo/remote:BUILD.core-foundation-0.9.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_foundation_sys__0_6_2",
        url = "https://crates.io/api/v1/crates/core-foundation-sys/0.6.2/download",
        type = "tar.gz",
        sha256 = "e7ca8a5221364ef15ce201e8ed2f609fc312682a8f4e0e3d4aa5879764e0fa3b",
        strip_prefix = "core-foundation-sys-0.6.2",
        build_file = Label("//cargo/remote:BUILD.core-foundation-sys-0.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_foundation_sys__0_7_0",
        url = "https://crates.io/api/v1/crates/core-foundation-sys/0.7.0/download",
        type = "tar.gz",
        sha256 = "b3a71ab494c0b5b860bdc8407ae08978052417070c2ced38573a9157ad75b8ac",
        strip_prefix = "core-foundation-sys-0.7.0",
        build_file = Label("//cargo/remote:BUILD.core-foundation-sys-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_foundation_sys__0_8_3",
        url = "https://crates.io/api/v1/crates/core-foundation-sys/0.8.3/download",
        type = "tar.gz",
        sha256 = "5827cebf4670468b8772dd191856768aedcb1b0278a04f989f7766351917b9dc",
        strip_prefix = "core-foundation-sys-0.8.3",
        build_file = Label("//cargo/remote:BUILD.core-foundation-sys-0.8.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_graphics__0_19_2",
        url = "https://crates.io/api/v1/crates/core-graphics/0.19.2/download",
        type = "tar.gz",
        sha256 = "b3889374e6ea6ab25dba90bb5d96202f61108058361f6dc72e8b03e6f8bbe923",
        strip_prefix = "core-graphics-0.19.2",
        build_file = Label("//cargo/remote:BUILD.core-graphics-0.19.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_graphics__0_22_3",
        url = "https://crates.io/api/v1/crates/core-graphics/0.22.3/download",
        type = "tar.gz",
        sha256 = "2581bbab3b8ffc6fcbd550bf46c355135d16e9ff2a6ea032ad6b9bf1d7efe4fb",
        strip_prefix = "core-graphics-0.22.3",
        build_file = Label("//cargo/remote:BUILD.core-graphics-0.22.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_graphics_types__0_1_1",
        url = "https://crates.io/api/v1/crates/core-graphics-types/0.1.1/download",
        type = "tar.gz",
        sha256 = "3a68b68b3446082644c91ac778bf50cd4104bfb002b5a6a7c44cca5a2c70788b",
        strip_prefix = "core-graphics-types-0.1.1",
        build_file = Label("//cargo/remote:BUILD.core-graphics-types-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__core_video_sys__0_1_4",
        url = "https://crates.io/api/v1/crates/core-video-sys/0.1.4/download",
        type = "tar.gz",
        sha256 = "34ecad23610ad9757664d644e369246edde1803fcb43ed72876565098a5d3828",
        strip_prefix = "core-video-sys-0.1.4",
        build_file = Label("//cargo/remote:BUILD.core-video-sys-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__coreaudio_rs__0_10_0",
        url = "https://crates.io/api/v1/crates/coreaudio-rs/0.10.0/download",
        type = "tar.gz",
        sha256 = "11894b20ebfe1ff903cbdc52259693389eea03b94918a2def2c30c3bf227ad88",
        strip_prefix = "coreaudio-rs-0.10.0",
        build_file = Label("//cargo/remote:BUILD.coreaudio-rs-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__coreaudio_sys__0_2_8",
        url = "https://crates.io/api/v1/crates/coreaudio-sys/0.2.8/download",
        type = "tar.gz",
        sha256 = "2b7e3347be6a09b46aba228d6608386739fb70beff4f61e07422da87b0bb31fa",
        strip_prefix = "coreaudio-sys-0.2.8",
        build_file = Label("//cargo/remote:BUILD.coreaudio-sys-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cpal__0_13_4",
        url = "https://crates.io/api/v1/crates/cpal/0.13.4/download",
        type = "tar.gz",
        sha256 = "98f45f0a21f617cd2c788889ef710b63f075c949259593ea09c826f1e47a2418",
        strip_prefix = "cpal-0.13.4",
        build_file = Label("//cargo/remote:BUILD.cpal-0.13.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__crc32fast__1_3_1",
        url = "https://crates.io/api/v1/crates/crc32fast/1.3.1/download",
        type = "tar.gz",
        sha256 = "a2209c310e29876f7f0b2721e7e26b84aff178aa3da5d091f9bfbf47669e60e3",
        strip_prefix = "crc32fast-1.3.1",
        build_file = Label("//cargo/remote:BUILD.crc32fast-1.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__crossbeam_channel__0_5_2",
        url = "https://crates.io/api/v1/crates/crossbeam-channel/0.5.2/download",
        type = "tar.gz",
        sha256 = "e54ea8bc3fb1ee042f5aace6e3c6e025d3874866da222930f70ce62aceba0bfa",
        strip_prefix = "crossbeam-channel-0.5.2",
        build_file = Label("//cargo/remote:BUILD.crossbeam-channel-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__crossbeam_utils__0_8_6",
        url = "https://crates.io/api/v1/crates/crossbeam-utils/0.8.6/download",
        type = "tar.gz",
        sha256 = "cfcae03edb34f947e64acdb1c33ec169824e20657e9ecb61cef6c8c74dcb8120",
        strip_prefix = "crossbeam-utils-0.8.6",
        build_file = Label("//cargo/remote:BUILD.crossbeam-utils-0.8.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__cty__0_2_2",
        url = "https://crates.io/api/v1/crates/cty/0.2.2/download",
        type = "tar.gz",
        sha256 = "b365fabc795046672053e29c954733ec3b05e4be654ab130fe8f1f94d7051f35",
        strip_prefix = "cty-0.2.2",
        build_file = Label("//cargo/remote:BUILD.cty-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__d3d12__0_4_1",
        url = "https://crates.io/api/v1/crates/d3d12/0.4.1/download",
        type = "tar.gz",
        sha256 = "2daefd788d1e96e0a9d66dee4b828b883509bc3ea9ce30665f04c3246372690c",
        strip_prefix = "d3d12-0.4.1",
        build_file = Label("//cargo/remote:BUILD.d3d12-0.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__darling__0_10_2",
        url = "https://crates.io/api/v1/crates/darling/0.10.2/download",
        type = "tar.gz",
        sha256 = "0d706e75d87e35569db781a9b5e2416cff1236a47ed380831f959382ccd5f858",
        strip_prefix = "darling-0.10.2",
        build_file = Label("//cargo/remote:BUILD.darling-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__darling__0_13_1",
        url = "https://crates.io/api/v1/crates/darling/0.13.1/download",
        type = "tar.gz",
        sha256 = "d0d720b8683f8dd83c65155f0530560cba68cd2bf395f6513a483caee57ff7f4",
        strip_prefix = "darling-0.13.1",
        build_file = Label("//cargo/remote:BUILD.darling-0.13.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__darling_core__0_10_2",
        url = "https://crates.io/api/v1/crates/darling_core/0.10.2/download",
        type = "tar.gz",
        sha256 = "f0c960ae2da4de88a91b2d920c2a7233b400bc33cb28453a2987822d8392519b",
        strip_prefix = "darling_core-0.10.2",
        build_file = Label("//cargo/remote:BUILD.darling_core-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__darling_core__0_13_1",
        url = "https://crates.io/api/v1/crates/darling_core/0.13.1/download",
        type = "tar.gz",
        sha256 = "7a340f241d2ceed1deb47ae36c4144b2707ec7dd0b649f894cb39bb595986324",
        strip_prefix = "darling_core-0.13.1",
        build_file = Label("//cargo/remote:BUILD.darling_core-0.13.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__darling_macro__0_10_2",
        url = "https://crates.io/api/v1/crates/darling_macro/0.10.2/download",
        type = "tar.gz",
        sha256 = "d9b5a2f4ac4969822c62224815d069952656cadc7084fdca9751e6d959189b72",
        strip_prefix = "darling_macro-0.10.2",
        build_file = Label("//cargo/remote:BUILD.darling_macro-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__darling_macro__0_13_1",
        url = "https://crates.io/api/v1/crates/darling_macro/0.13.1/download",
        type = "tar.gz",
        sha256 = "72c41b3b7352feb3211a0d743dc5700a4e3b60f51bd2b368892d1e0f9a95f44b",
        strip_prefix = "darling_macro-0.13.1",
        build_file = Label("//cargo/remote:BUILD.darling_macro-0.13.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__deflate__0_8_6",
        url = "https://crates.io/api/v1/crates/deflate/0.8.6/download",
        type = "tar.gz",
        sha256 = "73770f8e1fe7d64df17ca66ad28994a0a623ea497fa69486e14984e715c5d174",
        strip_prefix = "deflate-0.8.6",
        build_file = Label("//cargo/remote:BUILD.deflate-0.8.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__discard__1_0_4",
        url = "https://crates.io/api/v1/crates/discard/1.0.4/download",
        type = "tar.gz",
        sha256 = "212d0f5754cb6769937f4501cc0e67f4f4483c8d2c3e1e922ee9edbe4ab4c7c0",
        strip_prefix = "discard-1.0.4",
        build_file = Label("//cargo/remote:BUILD.discard-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__dispatch__0_2_0",
        url = "https://crates.io/api/v1/crates/dispatch/0.2.0/download",
        type = "tar.gz",
        sha256 = "bd0c93bb4b0c6d9b77f4435b0ae98c24d17f1c45b2ff844c6151a07256ca923b",
        strip_prefix = "dispatch-0.2.0",
        build_file = Label("//cargo/remote:BUILD.dispatch-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__downcast_rs__1_2_0",
        url = "https://crates.io/api/v1/crates/downcast-rs/1.2.0/download",
        type = "tar.gz",
        sha256 = "9ea835d29036a4087793836fa931b08837ad5e957da9e23886b29586fb9b6650",
        strip_prefix = "downcast-rs-1.2.0",
        build_file = Label("//cargo/remote:BUILD.downcast-rs-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__env_logger__0_8_4",
        url = "https://crates.io/api/v1/crates/env_logger/0.8.4/download",
        type = "tar.gz",
        sha256 = "a19187fea3ac7e84da7dacf48de0c45d63c6a76f9490dae389aead16c243fce3",
        strip_prefix = "env_logger-0.8.4",
        build_file = Label("//cargo/remote:BUILD.env_logger-0.8.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__erased_serde__0_3_18",
        url = "https://crates.io/api/v1/crates/erased-serde/0.3.18/download",
        type = "tar.gz",
        sha256 = "56047058e1ab118075ca22f9ecd737bcc961aa3566a3019cb71388afa280bd8a",
        strip_prefix = "erased-serde-0.3.18",
        build_file = Label("//cargo/remote:BUILD.erased-serde-0.3.18.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__euclid__0_22_6",
        url = "https://crates.io/api/v1/crates/euclid/0.22.6/download",
        type = "tar.gz",
        sha256 = "da96828553a086d7b18dcebfc579bd9628b016f86590d7453c115e490fa74b80",
        strip_prefix = "euclid-0.22.6",
        build_file = Label("//cargo/remote:BUILD.euclid-0.22.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__event_listener__2_5_2",
        url = "https://crates.io/api/v1/crates/event-listener/2.5.2/download",
        type = "tar.gz",
        sha256 = "77f3309417938f28bf8228fcff79a4a37103981e3e186d2ccd19c74b38f4eb71",
        strip_prefix = "event-listener-2.5.2",
        build_file = Label("//cargo/remote:BUILD.event-listener-2.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__fastrand__1_7_0",
        url = "https://crates.io/api/v1/crates/fastrand/1.7.0/download",
        type = "tar.gz",
        sha256 = "c3fcf0cee53519c866c09b5de1f6c56ff9d647101f81c1964fa632e148896cdf",
        strip_prefix = "fastrand-1.7.0",
        build_file = Label("//cargo/remote:BUILD.fastrand-1.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__filetime__0_2_15",
        url = "https://crates.io/api/v1/crates/filetime/0.2.15/download",
        type = "tar.gz",
        sha256 = "975ccf83d8d9d0d84682850a38c8169027be83368805971cc4f238c2b245bc98",
        strip_prefix = "filetime-0.2.15",
        build_file = Label("//cargo/remote:BUILD.filetime-0.2.15.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__fixedbitset__0_4_1",
        url = "https://crates.io/api/v1/crates/fixedbitset/0.4.1/download",
        type = "tar.gz",
        sha256 = "279fb028e20b3c4c320317955b77c5e0c9701f05a1d309905d6fc702cdc5053e",
        strip_prefix = "fixedbitset-0.4.1",
        build_file = Label("//cargo/remote:BUILD.fixedbitset-0.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__fnv__1_0_7",
        url = "https://crates.io/api/v1/crates/fnv/1.0.7/download",
        type = "tar.gz",
        sha256 = "3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1",
        strip_prefix = "fnv-1.0.7",
        build_file = Label("//cargo/remote:BUILD.fnv-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__foreign_types__0_3_2",
        url = "https://crates.io/api/v1/crates/foreign-types/0.3.2/download",
        type = "tar.gz",
        sha256 = "f6f339eb8adc052cd2ca78910fda869aefa38d22d5cb648e6485e4d3fc06f3b1",
        strip_prefix = "foreign-types-0.3.2",
        build_file = Label("//cargo/remote:BUILD.foreign-types-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__foreign_types_shared__0_1_1",
        url = "https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download",
        type = "tar.gz",
        sha256 = "00b0228411908ca8685dba7fc2cdd70ec9990a6e753e89b6ac91a84c40fbaf4b",
        strip_prefix = "foreign-types-shared-0.1.1",
        build_file = Label("//cargo/remote:BUILD.foreign-types-shared-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__fsevent_sys__4_1_0",
        url = "https://crates.io/api/v1/crates/fsevent-sys/4.1.0/download",
        type = "tar.gz",
        sha256 = "76ee7a02da4d231650c7cea31349b889be2f45ddb3ef3032d2ec8185f6313fd2",
        strip_prefix = "fsevent-sys-4.1.0",
        build_file = Label("//cargo/remote:BUILD.fsevent-sys-4.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__futures_core__0_3_19",
        url = "https://crates.io/api/v1/crates/futures-core/0.3.19/download",
        type = "tar.gz",
        sha256 = "d0c8ff0461b82559810cdccfde3215c3f373807f5e5232b71479bff7bb2583d7",
        strip_prefix = "futures-core-0.3.19",
        build_file = Label("//cargo/remote:BUILD.futures-core-0.3.19.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__futures_io__0_3_19",
        url = "https://crates.io/api/v1/crates/futures-io/0.3.19/download",
        type = "tar.gz",
        sha256 = "b1f9d34af5a1aac6fb380f735fe510746c38067c5bf16c7fd250280503c971b2",
        strip_prefix = "futures-io-0.3.19",
        build_file = Label("//cargo/remote:BUILD.futures-io-0.3.19.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__futures_lite__1_12_0",
        url = "https://crates.io/api/v1/crates/futures-lite/1.12.0/download",
        type = "tar.gz",
        sha256 = "7694489acd39452c77daa48516b894c153f192c3578d5a839b62c58099fcbf48",
        strip_prefix = "futures-lite-1.12.0",
        build_file = Label("//cargo/remote:BUILD.futures-lite-1.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__fxhash__0_2_1",
        url = "https://crates.io/api/v1/crates/fxhash/0.2.1/download",
        type = "tar.gz",
        sha256 = "c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c",
        strip_prefix = "fxhash-0.2.1",
        build_file = Label("//cargo/remote:BUILD.fxhash-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__getrandom__0_2_4",
        url = "https://crates.io/api/v1/crates/getrandom/0.2.4/download",
        type = "tar.gz",
        sha256 = "418d37c8b1d42553c93648be529cb70f920d3baf8ef469b74b9638df426e0b4c",
        strip_prefix = "getrandom-0.2.4",
        build_file = Label("//cargo/remote:BUILD.getrandom-0.2.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gilrs__0_8_2",
        url = "https://crates.io/api/v1/crates/gilrs/0.8.2/download",
        type = "tar.gz",
        sha256 = "1550c8bdebc993576e343d600a954654708a9a1182396ee1e805d6fe60c72909",
        strip_prefix = "gilrs-0.8.2",
        build_file = Label("//cargo/remote:BUILD.gilrs-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gilrs_core__0_3_2",
        url = "https://crates.io/api/v1/crates/gilrs-core/0.3.2/download",
        type = "tar.gz",
        sha256 = "84c7262ce1e88429c9b1d847820c9d2ba00adafc955218393d9c0861d5aaab88",
        strip_prefix = "gilrs-core-0.3.2",
        build_file = Label("//cargo/remote:BUILD.gilrs-core-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__glam__0_20_2",
        url = "https://crates.io/api/v1/crates/glam/0.20.2/download",
        type = "tar.gz",
        sha256 = "e4fa84eead97d5412b2a20aed4d66612a97a9e41e08eababdb9ae2bf88667490",
        strip_prefix = "glam-0.20.2",
        build_file = Label("//cargo/remote:BUILD.glam-0.20.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__glob__0_3_0",
        url = "https://crates.io/api/v1/crates/glob/0.3.0/download",
        type = "tar.gz",
        sha256 = "9b919933a397b79c37e33b77bb2aa3dc8eb6e165ad809e58ff75bc7db2e34574",
        strip_prefix = "glob-0.3.0",
        build_file = Label("//cargo/remote:BUILD.glob-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__glow__0_11_2",
        url = "https://crates.io/api/v1/crates/glow/0.11.2/download",
        type = "tar.gz",
        sha256 = "d8bd5877156a19b8ac83a29b2306fe20537429d318f3ff0a1a2119f8d9c61919",
        strip_prefix = "glow-0.11.2",
        build_file = Label("//cargo/remote:BUILD.glow-0.11.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gltf__0_16_0",
        url = "https://crates.io/api/v1/crates/gltf/0.16.0/download",
        type = "tar.gz",
        sha256 = "8ff38b75359a0096dd0a8599b6e4f37a6ee41d5df300cc7669e62aafa697f7a2",
        strip_prefix = "gltf-0.16.0",
        build_file = Label("//cargo/remote:BUILD.gltf-0.16.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gltf_derive__0_16_0",
        url = "https://crates.io/api/v1/crates/gltf-derive/0.16.0/download",
        type = "tar.gz",
        sha256 = "1f2a9333e0f9c7bca94dfc20bcf44fa12a61eeec662d6e007563ff748aa59c70",
        strip_prefix = "gltf-derive-0.16.0",
        build_file = Label("//cargo/remote:BUILD.gltf-derive-0.16.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gltf_json__0_16_0",
        url = "https://crates.io/api/v1/crates/gltf-json/0.16.0/download",
        type = "tar.gz",
        sha256 = "a1414d3a98cbaabdb2f134328b1f6036d14b282febc1df51952a435d2ca17fb6",
        strip_prefix = "gltf-json-0.16.0",
        build_file = Label("//cargo/remote:BUILD.gltf-json-0.16.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__glyph_brush_layout__0_2_3",
        url = "https://crates.io/api/v1/crates/glyph_brush_layout/0.2.3/download",
        type = "tar.gz",
        sha256 = "cc32c2334f00ca5ac3695c5009ae35da21da8c62d255b5b96d56e2597a637a38",
        strip_prefix = "glyph_brush_layout-0.2.3",
        build_file = Label("//cargo/remote:BUILD.glyph_brush_layout-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gpu_alloc__0_5_3",
        url = "https://crates.io/api/v1/crates/gpu-alloc/0.5.3/download",
        type = "tar.gz",
        sha256 = "7fc59e5f710e310e76e6707f86c561dd646f69a8876da9131703b2f717de818d",
        strip_prefix = "gpu-alloc-0.5.3",
        build_file = Label("//cargo/remote:BUILD.gpu-alloc-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gpu_alloc_types__0_2_0",
        url = "https://crates.io/api/v1/crates/gpu-alloc-types/0.2.0/download",
        type = "tar.gz",
        sha256 = "54804d0d6bc9d7f26db4eaec1ad10def69b599315f487d32c334a80d1efe67a5",
        strip_prefix = "gpu-alloc-types-0.2.0",
        build_file = Label("//cargo/remote:BUILD.gpu-alloc-types-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gpu_descriptor__0_2_2",
        url = "https://crates.io/api/v1/crates/gpu-descriptor/0.2.2/download",
        type = "tar.gz",
        sha256 = "a538f217be4d405ff4719a283ca68323cc2384003eca5baaa87501e821c81dda",
        strip_prefix = "gpu-descriptor-0.2.2",
        build_file = Label("//cargo/remote:BUILD.gpu-descriptor-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__gpu_descriptor_types__0_1_1",
        url = "https://crates.io/api/v1/crates/gpu-descriptor-types/0.1.1/download",
        type = "tar.gz",
        sha256 = "363e3677e55ad168fef68cf9de3a4a310b53124c5e784c53a1d70e92d23f2126",
        strip_prefix = "gpu-descriptor-types-0.1.1",
        build_file = Label("//cargo/remote:BUILD.gpu-descriptor-types-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__guillotiere__0_6_2",
        url = "https://crates.io/api/v1/crates/guillotiere/0.6.2/download",
        type = "tar.gz",
        sha256 = "b62d5865c036cb1393e23c50693df631d3f5d7bcca4c04fe4cc0fd592e74a782",
        strip_prefix = "guillotiere-0.6.2",
        build_file = Label("//cargo/remote:BUILD.guillotiere-0.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__hashbrown__0_11_2",
        url = "https://crates.io/api/v1/crates/hashbrown/0.11.2/download",
        type = "tar.gz",
        sha256 = "ab5ef0d4909ef3724cc8cce6ccc8572c5c817592e9285f5464f8e86f8bd3726e",
        strip_prefix = "hashbrown-0.11.2",
        build_file = Label("//cargo/remote:BUILD.hashbrown-0.11.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__hermit_abi__0_1_19",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.19/download",
        type = "tar.gz",
        sha256 = "62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33",
        strip_prefix = "hermit-abi-0.1.19",
        build_file = Label("//cargo/remote:BUILD.hermit-abi-0.1.19.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__hex__0_4_3",
        url = "https://crates.io/api/v1/crates/hex/0.4.3/download",
        type = "tar.gz",
        sha256 = "7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70",
        strip_prefix = "hex-0.4.3",
        build_file = Label("//cargo/remote:BUILD.hex-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__hexasphere__6_0_0",
        url = "https://crates.io/api/v1/crates/hexasphere/6.0.0/download",
        type = "tar.gz",
        sha256 = "9dc62dcfd68ec810c4707804556f2e88655012b1a373b0e0bbbe88a9db366627",
        strip_prefix = "hexasphere-6.0.0",
        build_file = Label("//cargo/remote:BUILD.hexasphere-6.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__hexf_parse__0_2_1",
        url = "https://crates.io/api/v1/crates/hexf-parse/0.2.1/download",
        type = "tar.gz",
        sha256 = "dfa686283ad6dd069f105e5ab091b04c62850d3e4cf5d67debad1933f55023df",
        strip_prefix = "hexf-parse-0.2.1",
        build_file = Label("//cargo/remote:BUILD.hexf-parse-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ident_case__1_0_1",
        url = "https://crates.io/api/v1/crates/ident_case/1.0.1/download",
        type = "tar.gz",
        sha256 = "b9e0384b61958566e926dc50660321d12159025e767c18e043daf26b70104c39",
        strip_prefix = "ident_case-1.0.1",
        build_file = Label("//cargo/remote:BUILD.ident_case-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__image__0_23_14",
        url = "https://crates.io/api/v1/crates/image/0.23.14/download",
        type = "tar.gz",
        sha256 = "24ffcb7e7244a9bf19d35bf2883b9c080c4ced3c07a9895572178cdb8f13f6a1",
        strip_prefix = "image-0.23.14",
        build_file = Label("//cargo/remote:BUILD.image-0.23.14.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__indexmap__1_8_0",
        url = "https://crates.io/api/v1/crates/indexmap/1.8.0/download",
        type = "tar.gz",
        sha256 = "282a6247722caba404c065016bbfa522806e51714c34f5dfc3e4a3a46fcb4223",
        strip_prefix = "indexmap-1.8.0",
        build_file = Label("//cargo/remote:BUILD.indexmap-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__inflections__1_1_1",
        url = "https://crates.io/api/v1/crates/inflections/1.1.1/download",
        type = "tar.gz",
        sha256 = "a257582fdcde896fd96463bf2d40eefea0580021c0712a0e2b028b60b47a837a",
        strip_prefix = "inflections-1.1.1",
        build_file = Label("//cargo/remote:BUILD.inflections-1.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__inotify__0_9_6",
        url = "https://crates.io/api/v1/crates/inotify/0.9.6/download",
        type = "tar.gz",
        sha256 = "f8069d3ec154eb856955c1c0fbffefbf5f3c40a104ec912d4797314c1801abff",
        strip_prefix = "inotify-0.9.6",
        build_file = Label("//cargo/remote:BUILD.inotify-0.9.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__inotify_sys__0_1_5",
        url = "https://crates.io/api/v1/crates/inotify-sys/0.1.5/download",
        type = "tar.gz",
        sha256 = "e05c02b5e89bff3b946cedeca278abc628fe811e604f027c45a8aa3cf793d0eb",
        strip_prefix = "inotify-sys-0.1.5",
        build_file = Label("//cargo/remote:BUILD.inotify-sys-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__inplace_it__0_3_3",
        url = "https://crates.io/api/v1/crates/inplace_it/0.3.3/download",
        type = "tar.gz",
        sha256 = "90953f308a79fe6d62a4643e51f848fbfddcd05975a38e69fdf4ab86a7baf7ca",
        strip_prefix = "inplace_it-0.3.3",
        build_file = Label("//cargo/remote:BUILD.inplace_it-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__instant__0_1_12",
        url = "https://crates.io/api/v1/crates/instant/0.1.12/download",
        type = "tar.gz",
        sha256 = "7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c",
        strip_prefix = "instant-0.1.12",
        build_file = Label("//cargo/remote:BUILD.instant-0.1.12.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__io_kit_sys__0_1_0",
        url = "https://crates.io/api/v1/crates/io-kit-sys/0.1.0/download",
        type = "tar.gz",
        sha256 = "f21dcc74995dd4cd090b147e79789f8d65959cbfb5f0b118002db869ea3bd0a0",
        strip_prefix = "io-kit-sys-0.1.0",
        build_file = Label("//cargo/remote:BUILD.io-kit-sys-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__itoa__1_0_1",
        url = "https://crates.io/api/v1/crates/itoa/1.0.1/download",
        type = "tar.gz",
        sha256 = "1aab8fc367588b89dcee83ab0fd66b72b50b72fa1904d7095045ace2b0c81c35",
        strip_prefix = "itoa-1.0.1",
        build_file = Label("//cargo/remote:BUILD.itoa-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__jni__0_19_0",
        url = "https://crates.io/api/v1/crates/jni/0.19.0/download",
        type = "tar.gz",
        sha256 = "c6df18c2e3db7e453d3c6ac5b3e9d5182664d28788126d39b91f2d1e22b017ec",
        strip_prefix = "jni-0.19.0",
        build_file = Label("//cargo/remote:BUILD.jni-0.19.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__jni_sys__0_3_0",
        url = "https://crates.io/api/v1/crates/jni-sys/0.3.0/download",
        type = "tar.gz",
        sha256 = "8eaf4bc02d17cbdd7ff4c7438cafcdf7fb9a4613313ad11b4f8fefe7d3fa0130",
        strip_prefix = "jni-sys-0.3.0",
        build_file = Label("//cargo/remote:BUILD.jni-sys-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__jobserver__0_1_24",
        url = "https://crates.io/api/v1/crates/jobserver/0.1.24/download",
        type = "tar.gz",
        sha256 = "af25a77299a7f711a01975c35a6a424eb6862092cc2d6c72c4ed6cbc56dfc1fa",
        strip_prefix = "jobserver-0.1.24",
        build_file = Label("//cargo/remote:BUILD.jobserver-0.1.24.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__js_sys__0_3_56",
        url = "https://crates.io/api/v1/crates/js-sys/0.3.56/download",
        type = "tar.gz",
        sha256 = "a38fc24e30fd564ce974c02bf1d337caddff65be6cc4735a1f7eab22a7440f04",
        strip_prefix = "js-sys-0.3.56",
        build_file = Label("//cargo/remote:BUILD.js-sys-0.3.56.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__khronos_egl__4_1_0",
        url = "https://crates.io/api/v1/crates/khronos-egl/4.1.0/download",
        type = "tar.gz",
        sha256 = "8c2352bd1d0bceb871cb9d40f24360c8133c11d7486b68b5381c1dd1a32015e3",
        strip_prefix = "khronos-egl-4.1.0",
        build_file = Label("//cargo/remote:BUILD.khronos-egl-4.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__kqueue__1_0_4",
        url = "https://crates.io/api/v1/crates/kqueue/1.0.4/download",
        type = "tar.gz",
        sha256 = "058a107a784f8be94c7d35c1300f4facced2e93d2fbe5b1452b44e905ddca4a9",
        strip_prefix = "kqueue-1.0.4",
        build_file = Label("//cargo/remote:BUILD.kqueue-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__kqueue_sys__1_0_3",
        url = "https://crates.io/api/v1/crates/kqueue-sys/1.0.3/download",
        type = "tar.gz",
        sha256 = "8367585489f01bc55dd27404dcf56b95e6da061a256a666ab23be9ba96a2e587",
        strip_prefix = "kqueue-sys-1.0.3",
        build_file = Label("//cargo/remote:BUILD.kqueue-sys-1.0.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//cargo/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__lazycell__1_3_0",
        url = "https://crates.io/api/v1/crates/lazycell/1.3.0/download",
        type = "tar.gz",
        sha256 = "830d08ce1d1d941e6b30645f1a0eb5643013d835ce3779a5fc208261dbe10f55",
        strip_prefix = "lazycell-1.3.0",
        build_file = Label("//cargo/remote:BUILD.lazycell-1.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__lewton__0_10_2",
        url = "https://crates.io/api/v1/crates/lewton/0.10.2/download",
        type = "tar.gz",
        sha256 = "777b48df9aaab155475a83a7df3070395ea1ac6902f5cd062b8f2b028075c030",
        strip_prefix = "lewton-0.10.2",
        build_file = Label("//cargo/remote:BUILD.lewton-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__libc__0_2_114",
        url = "https://crates.io/api/v1/crates/libc/0.2.114/download",
        type = "tar.gz",
        sha256 = "b0005d08a8f7b65fb8073cb697aa0b12b631ed251ce73d862ce50eeb52ce3b50",
        strip_prefix = "libc-0.2.114",
        build_file = Label("//cargo/remote:BUILD.libc-0.2.114.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__libloading__0_7_3",
        url = "https://crates.io/api/v1/crates/libloading/0.7.3/download",
        type = "tar.gz",
        sha256 = "efbc0f03f9a775e9f6aed295c6a1ba2253c5757a9e03d55c6caa46a681abcddd",
        strip_prefix = "libloading-0.7.3",
        build_file = Label("//cargo/remote:BUILD.libloading-0.7.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__libm__0_1_4",
        url = "https://crates.io/api/v1/crates/libm/0.1.4/download",
        type = "tar.gz",
        sha256 = "7fc7aa29613bd6a620df431842069224d8bc9011086b1db4c0e0cd47fa03ec9a",
        strip_prefix = "libm-0.1.4",
        build_file = Label("//cargo/remote:BUILD.libm-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__libudev_sys__0_1_4",
        url = "https://crates.io/api/v1/crates/libudev-sys/0.1.4/download",
        type = "tar.gz",
        sha256 = "3c8469b4a23b962c1396b9b451dda50ef5b283e8dd309d69033475fa9b334324",
        strip_prefix = "libudev-sys-0.1.4",
        build_file = Label("//cargo/remote:BUILD.libudev-sys-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__lock_api__0_4_5",
        url = "https://crates.io/api/v1/crates/lock_api/0.4.5/download",
        type = "tar.gz",
        sha256 = "712a4d093c9976e24e7dbca41db895dabcbac38eb5f4045393d17a95bdfb1109",
        strip_prefix = "lock_api-0.4.5",
        build_file = Label("//cargo/remote:BUILD.lock_api-0.4.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__log__0_4_14",
        url = "https://crates.io/api/v1/crates/log/0.4.14/download",
        type = "tar.gz",
        sha256 = "51b9bbe6c47d51fc3e1a9b945965946b4c44142ab8792c50835a980d362c2710",
        strip_prefix = "log-0.4.14",
        build_file = Label("//cargo/remote:BUILD.log-0.4.14.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__mach__0_2_3",
        url = "https://crates.io/api/v1/crates/mach/0.2.3/download",
        type = "tar.gz",
        sha256 = "86dd2487cdfea56def77b88438a2c915fb45113c5319bfe7e14306ca4cd0b0e1",
        strip_prefix = "mach-0.2.3",
        build_file = Label("//cargo/remote:BUILD.mach-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__mach__0_3_2",
        url = "https://crates.io/api/v1/crates/mach/0.3.2/download",
        type = "tar.gz",
        sha256 = "b823e83b2affd8f40a9ee8c29dbc56404c1e34cd2710921f2801e2cf29527afa",
        strip_prefix = "mach-0.3.2",
        build_file = Label("//cargo/remote:BUILD.mach-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__malloc_buf__0_0_6",
        url = "https://crates.io/api/v1/crates/malloc_buf/0.0.6/download",
        type = "tar.gz",
        sha256 = "62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb",
        strip_prefix = "malloc_buf-0.0.6",
        build_file = Label("//cargo/remote:BUILD.malloc_buf-0.0.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__matchers__0_1_0",
        url = "https://crates.io/api/v1/crates/matchers/0.1.0/download",
        type = "tar.gz",
        sha256 = "8263075bb86c5a1b1427b5ae862e8889656f126e9f77c484496e8b47cf5c5558",
        strip_prefix = "matchers-0.1.0",
        build_file = Label("//cargo/remote:BUILD.matchers-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__memchr__2_4_1",
        url = "https://crates.io/api/v1/crates/memchr/2.4.1/download",
        type = "tar.gz",
        sha256 = "308cc39be01b73d0d18f82a0e7b2a3df85245f84af96fdddc5d202d27e47b86a",
        strip_prefix = "memchr-2.4.1",
        build_file = Label("//cargo/remote:BUILD.memchr-2.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__memoffset__0_6_5",
        url = "https://crates.io/api/v1/crates/memoffset/0.6.5/download",
        type = "tar.gz",
        sha256 = "5aa361d4faea93603064a027415f07bd8e1d5c88c9fbf68bf56a285428fd79ce",
        strip_prefix = "memoffset-0.6.5",
        build_file = Label("//cargo/remote:BUILD.memoffset-0.6.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__metal__0_23_1",
        url = "https://crates.io/api/v1/crates/metal/0.23.1/download",
        type = "tar.gz",
        sha256 = "e0514f491f4cc03632ab399ee01e2c1c1b12d3e1cf2d667c1ff5f87d6dcd2084",
        strip_prefix = "metal-0.23.1",
        build_file = Label("//cargo/remote:BUILD.metal-0.23.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__miniz_oxide__0_3_7",
        url = "https://crates.io/api/v1/crates/miniz_oxide/0.3.7/download",
        type = "tar.gz",
        sha256 = "791daaae1ed6889560f8c4359194f56648355540573244a5448a83ba1ecc7435",
        strip_prefix = "miniz_oxide-0.3.7",
        build_file = Label("//cargo/remote:BUILD.miniz_oxide-0.3.7.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__mint__0_5_8",
        url = "https://crates.io/api/v1/crates/mint/0.5.8/download",
        type = "tar.gz",
        sha256 = "162e591484b4b8fe9e1ca16ebf07ab584fdc3334508d76a788cd54d89cfc20dc",
        strip_prefix = "mint-0.5.8",
        build_file = Label("//cargo/remote:BUILD.mint-0.5.8.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__mio__0_7_14",
        url = "https://crates.io/api/v1/crates/mio/0.7.14/download",
        type = "tar.gz",
        sha256 = "8067b404fe97c70829f082dec8bcf4f71225d7eaea1d8645349cb76fa06205cc",
        strip_prefix = "mio-0.7.14",
        build_file = Label("//cargo/remote:BUILD.mio-0.7.14.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__mio__0_8_0",
        url = "https://crates.io/api/v1/crates/mio/0.8.0/download",
        type = "tar.gz",
        sha256 = "ba272f85fa0b41fc91872be579b3bbe0f56b792aa361a380eb669469f68dafb2",
        strip_prefix = "mio-0.8.0",
        build_file = Label("//cargo/remote:BUILD.mio-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__miow__0_3_7",
        url = "https://crates.io/api/v1/crates/miow/0.3.7/download",
        type = "tar.gz",
        sha256 = "b9f1c5b025cda876f66ef43a113f91ebc9f4ccef34843000e0adf6ebbab84e21",
        strip_prefix = "miow-0.3.7",
        build_file = Label("//cargo/remote:BUILD.miow-0.3.7.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__naga__0_8_5",
        url = "https://crates.io/api/v1/crates/naga/0.8.5/download",
        type = "tar.gz",
        sha256 = "3012f2dbcc79e8e0b5825a4836a7106a75dd9b2fe42c528163be0f572538c705",
        strip_prefix = "naga-0.8.5",
        build_file = Label("//cargo/remote:BUILD.naga-0.8.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk__0_3_0",
        url = "https://crates.io/api/v1/crates/ndk/0.3.0/download",
        type = "tar.gz",
        sha256 = "8794322172319b972f528bf90c6b467be0079f1fa82780ffb431088e741a73ab",
        strip_prefix = "ndk-0.3.0",
        build_file = Label("//cargo/remote:BUILD.ndk-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk__0_5_0",
        url = "https://crates.io/api/v1/crates/ndk/0.5.0/download",
        type = "tar.gz",
        sha256 = "96d868f654c72e75f8687572699cdabe755f03effbb62542768e995d5b8d699d",
        strip_prefix = "ndk-0.5.0",
        build_file = Label("//cargo/remote:BUILD.ndk-0.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk__0_6_0",
        url = "https://crates.io/api/v1/crates/ndk/0.6.0/download",
        type = "tar.gz",
        sha256 = "2032c77e030ddee34a6787a64166008da93f6a352b629261d0fee232b8742dd4",
        strip_prefix = "ndk-0.6.0",
        build_file = Label("//cargo/remote:BUILD.ndk-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk_glue__0_3_0",
        url = "https://crates.io/api/v1/crates/ndk-glue/0.3.0/download",
        type = "tar.gz",
        sha256 = "c5caf0c24d51ac1c905c27d4eda4fa0635bbe0de596b8f79235e0b17a4d29385",
        strip_prefix = "ndk-glue-0.3.0",
        build_file = Label("//cargo/remote:BUILD.ndk-glue-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk_glue__0_5_0",
        url = "https://crates.io/api/v1/crates/ndk-glue/0.5.0/download",
        type = "tar.gz",
        sha256 = "fc291b8de2095cba8dab7cf381bf582ff4c17a09acf854c32e46545b08085d28",
        strip_prefix = "ndk-glue-0.5.0",
        build_file = Label("//cargo/remote:BUILD.ndk-glue-0.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk_glue__0_6_0",
        url = "https://crates.io/api/v1/crates/ndk-glue/0.6.0/download",
        type = "tar.gz",
        sha256 = "04c0d14b0858eb9962a5dac30b809b19f19da7e4547d64af2b0bb051d2e55d79",
        strip_prefix = "ndk-glue-0.6.0",
        build_file = Label("//cargo/remote:BUILD.ndk-glue-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk_macro__0_2_0",
        url = "https://crates.io/api/v1/crates/ndk-macro/0.2.0/download",
        type = "tar.gz",
        sha256 = "05d1c6307dc424d0f65b9b06e94f88248e6305726b14729fd67a5e47b2dc481d",
        strip_prefix = "ndk-macro-0.2.0",
        build_file = Label("//cargo/remote:BUILD.ndk-macro-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk_macro__0_3_0",
        url = "https://crates.io/api/v1/crates/ndk-macro/0.3.0/download",
        type = "tar.gz",
        sha256 = "0df7ac00c4672f9d5aece54ee3347520b7e20f158656c7db2e6de01902eb7a6c",
        strip_prefix = "ndk-macro-0.3.0",
        build_file = Label("//cargo/remote:BUILD.ndk-macro-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk_sys__0_2_2",
        url = "https://crates.io/api/v1/crates/ndk-sys/0.2.2/download",
        type = "tar.gz",
        sha256 = "e1bcdd74c20ad5d95aacd60ef9ba40fdf77f767051040541df557b7a9b2a2121",
        strip_prefix = "ndk-sys-0.2.2",
        build_file = Label("//cargo/remote:BUILD.ndk-sys-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ndk_sys__0_3_0",
        url = "https://crates.io/api/v1/crates/ndk-sys/0.3.0/download",
        type = "tar.gz",
        sha256 = "6e5a6ae77c8ee183dcbbba6150e2e6b9f3f4196a7666c02a715a95692ec1fa97",
        strip_prefix = "ndk-sys-0.3.0",
        build_file = Label("//cargo/remote:BUILD.ndk-sys-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__nix__0_20_0",
        url = "https://crates.io/api/v1/crates/nix/0.20.0/download",
        type = "tar.gz",
        sha256 = "fa9b4819da1bc61c0ea48b63b7bc8604064dd43013e7cc325df098d49cd7c18a",
        strip_prefix = "nix-0.20.0",
        build_file = Label("//cargo/remote:BUILD.nix-0.20.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__nix__0_23_1",
        url = "https://crates.io/api/v1/crates/nix/0.23.1/download",
        type = "tar.gz",
        sha256 = "9f866317acbd3a240710c63f065ffb1e4fd466259045ccb504130b7f668f35c6",
        strip_prefix = "nix-0.23.1",
        build_file = Label("//cargo/remote:BUILD.nix-0.23.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__nom__5_1_2",
        url = "https://crates.io/api/v1/crates/nom/5.1.2/download",
        type = "tar.gz",
        sha256 = "ffb4262d26ed83a1c0a33a38fe2bb15797329c85770da05e6b828ddb782627af",
        strip_prefix = "nom-5.1.2",
        build_file = Label("//cargo/remote:BUILD.nom-5.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__notify__5_0_0_pre_11",
        url = "https://crates.io/api/v1/crates/notify/5.0.0-pre.11/download",
        type = "tar.gz",
        sha256 = "c614e7ed2b1cf82ec99aeffd8cf6225ef5021b9951148eb161393c394855032c",
        strip_prefix = "notify-5.0.0-pre.11",
        build_file = Label("//cargo/remote:BUILD.notify-5.0.0-pre.11.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ntapi__0_3_6",
        url = "https://crates.io/api/v1/crates/ntapi/0.3.6/download",
        type = "tar.gz",
        sha256 = "3f6bb902e437b6d86e03cce10a7e2af662292c5dfef23b65899ea3ac9354ad44",
        strip_prefix = "ntapi-0.3.6",
        build_file = Label("//cargo/remote:BUILD.ntapi-0.3.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_derive__0_3_3",
        url = "https://crates.io/api/v1/crates/num-derive/0.3.3/download",
        type = "tar.gz",
        sha256 = "876a53fff98e03a936a674b29568b0e605f06b29372c2489ff4de23f1949743d",
        strip_prefix = "num-derive-0.3.3",
        build_file = Label("//cargo/remote:BUILD.num-derive-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_integer__0_1_44",
        url = "https://crates.io/api/v1/crates/num-integer/0.1.44/download",
        type = "tar.gz",
        sha256 = "d2cc698a63b549a70bc047073d2949cce27cd1c7b0a4a862d08a8031bc2801db",
        strip_prefix = "num-integer-0.1.44",
        build_file = Label("//cargo/remote:BUILD.num-integer-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_iter__0_1_42",
        url = "https://crates.io/api/v1/crates/num-iter/0.1.42/download",
        type = "tar.gz",
        sha256 = "b2021c8337a54d21aca0d59a92577a029af9431cb59b909b03252b9c164fad59",
        strip_prefix = "num-iter-0.1.42",
        build_file = Label("//cargo/remote:BUILD.num-iter-0.1.42.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_rational__0_3_2",
        url = "https://crates.io/api/v1/crates/num-rational/0.3.2/download",
        type = "tar.gz",
        sha256 = "12ac428b1cb17fce6f731001d307d351ec70a6d202fc2e60f7d4c5e42d8f4f07",
        strip_prefix = "num-rational-0.3.2",
        build_file = Label("//cargo/remote:BUILD.num-rational-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_traits__0_2_14",
        url = "https://crates.io/api/v1/crates/num-traits/0.2.14/download",
        type = "tar.gz",
        sha256 = "9a64b1ec5cda2586e284722486d802acf1f7dbdc623e2bfc57e65ca1cd099290",
        strip_prefix = "num-traits-0.2.14",
        build_file = Label("//cargo/remote:BUILD.num-traits-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_cpus__1_13_1",
        url = "https://crates.io/api/v1/crates/num_cpus/1.13.1/download",
        type = "tar.gz",
        sha256 = "19e64526ebdee182341572e50e9ad03965aa510cd94427a4549448f285e957a1",
        strip_prefix = "num_cpus-1.13.1",
        build_file = Label("//cargo/remote:BUILD.num_cpus-1.13.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_enum__0_5_6",
        url = "https://crates.io/api/v1/crates/num_enum/0.5.6/download",
        type = "tar.gz",
        sha256 = "720d3ea1055e4e4574c0c0b0f8c3fd4f24c4cdaf465948206dea090b57b526ad",
        strip_prefix = "num_enum-0.5.6",
        build_file = Label("//cargo/remote:BUILD.num_enum-0.5.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__num_enum_derive__0_5_6",
        url = "https://crates.io/api/v1/crates/num_enum_derive/0.5.6/download",
        type = "tar.gz",
        sha256 = "0d992b768490d7fe0d8586d9b5745f6c49f557da6d81dc982b1d167ad4edbb21",
        strip_prefix = "num_enum_derive-0.5.6",
        build_file = Label("//cargo/remote:BUILD.num_enum_derive-0.5.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__objc__0_2_7",
        url = "https://crates.io/api/v1/crates/objc/0.2.7/download",
        type = "tar.gz",
        sha256 = "915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1",
        strip_prefix = "objc-0.2.7",
        build_file = Label("//cargo/remote:BUILD.objc-0.2.7.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__objc_exception__0_1_2",
        url = "https://crates.io/api/v1/crates/objc_exception/0.1.2/download",
        type = "tar.gz",
        sha256 = "ad970fb455818ad6cba4c122ad012fae53ae8b4795f86378bce65e4f6bab2ca4",
        strip_prefix = "objc_exception-0.1.2",
        build_file = Label("//cargo/remote:BUILD.objc_exception-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__oboe__0_4_5",
        url = "https://crates.io/api/v1/crates/oboe/0.4.5/download",
        type = "tar.gz",
        sha256 = "2463c8f2e19b4e0d0710a21f8e4011501ff28db1c95d7a5482a553b2100502d2",
        strip_prefix = "oboe-0.4.5",
        build_file = Label("//cargo/remote:BUILD.oboe-0.4.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__oboe_sys__0_4_5",
        url = "https://crates.io/api/v1/crates/oboe-sys/0.4.5/download",
        type = "tar.gz",
        sha256 = "3370abb7372ed744232c12954d920d1a40f1c4686de9e79e800021ef492294bd",
        strip_prefix = "oboe-sys-0.4.5",
        build_file = Label("//cargo/remote:BUILD.oboe-sys-0.4.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ogg__0_8_0",
        url = "https://crates.io/api/v1/crates/ogg/0.8.0/download",
        type = "tar.gz",
        sha256 = "6951b4e8bf21c8193da321bcce9c9dd2e13c858fe078bf9054a288b419ae5d6e",
        strip_prefix = "ogg-0.8.0",
        build_file = Label("//cargo/remote:BUILD.ogg-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__once_cell__1_9_0",
        url = "https://crates.io/api/v1/crates/once_cell/1.9.0/download",
        type = "tar.gz",
        sha256 = "da32515d9f6e6e489d7bc9d84c71b060db7247dc035bbe44eac88cf87486d8d5",
        strip_prefix = "once_cell-1.9.0",
        build_file = Label("//cargo/remote:BUILD.once_cell-1.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__owned_ttf_parser__0_14_0",
        url = "https://crates.io/api/v1/crates/owned_ttf_parser/0.14.0/download",
        type = "tar.gz",
        sha256 = "4ef05f2882a8b3e7acc10c153ade2631f7bfc8ce00d2bf3fb8f4e9d2ae6ea5c3",
        strip_prefix = "owned_ttf_parser-0.14.0",
        build_file = Label("//cargo/remote:BUILD.owned_ttf_parser-0.14.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__parking__2_0_0",
        url = "https://crates.io/api/v1/crates/parking/2.0.0/download",
        type = "tar.gz",
        sha256 = "427c3892f9e783d91cc128285287e70a59e206ca452770ece88a76f7a3eddd72",
        strip_prefix = "parking-2.0.0",
        build_file = Label("//cargo/remote:BUILD.parking-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__parking_lot__0_11_2",
        url = "https://crates.io/api/v1/crates/parking_lot/0.11.2/download",
        type = "tar.gz",
        sha256 = "7d17b78036a60663b797adeaee46f5c9dfebb86948d1255007a1d6be0271ff99",
        strip_prefix = "parking_lot-0.11.2",
        build_file = Label("//cargo/remote:BUILD.parking_lot-0.11.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__parking_lot_core__0_8_5",
        url = "https://crates.io/api/v1/crates/parking_lot_core/0.8.5/download",
        type = "tar.gz",
        sha256 = "d76e8e1493bcac0d2766c42737f34458f1c8c50c0d23bcb24ea953affb273216",
        strip_prefix = "parking_lot_core-0.8.5",
        build_file = Label("//cargo/remote:BUILD.parking_lot_core-0.8.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__peeking_take_while__0_1_2",
        url = "https://crates.io/api/v1/crates/peeking_take_while/0.1.2/download",
        type = "tar.gz",
        sha256 = "19b17cddbe7ec3f8bc800887bab5e717348c95ea2ca0b1bf0837fb964dc67099",
        strip_prefix = "peeking_take_while-0.1.2",
        build_file = Label("//cargo/remote:BUILD.peeking_take_while-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__percent_encoding__2_1_0",
        url = "https://crates.io/api/v1/crates/percent-encoding/2.1.0/download",
        type = "tar.gz",
        sha256 = "d4fd5641d01c8f18a23da7b6fe29298ff4b55afcccdf78973b24cf3175fee32e",
        strip_prefix = "percent-encoding-2.1.0",
        build_file = Label("//cargo/remote:BUILD.percent-encoding-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__petgraph__0_6_0",
        url = "https://crates.io/api/v1/crates/petgraph/0.6.0/download",
        type = "tar.gz",
        sha256 = "4a13a2fa9d0b63e5f22328828741e523766fff0ee9e779316902290dff3f824f",
        strip_prefix = "petgraph-0.6.0",
        build_file = Label("//cargo/remote:BUILD.petgraph-0.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__pin_project_lite__0_2_8",
        url = "https://crates.io/api/v1/crates/pin-project-lite/0.2.8/download",
        type = "tar.gz",
        sha256 = "e280fbe77cc62c91527259e9442153f4688736748d24660126286329742b4c6c",
        strip_prefix = "pin-project-lite-0.2.8",
        build_file = Label("//cargo/remote:BUILD.pin-project-lite-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__pkg_config__0_3_24",
        url = "https://crates.io/api/v1/crates/pkg-config/0.3.24/download",
        type = "tar.gz",
        sha256 = "58893f751c9b0412871a09abd62ecd2a00298c6c83befa223ef98c52aef40cbe",
        strip_prefix = "pkg-config-0.3.24",
        build_file = Label("//cargo/remote:BUILD.pkg-config-0.3.24.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__png__0_16_8",
        url = "https://crates.io/api/v1/crates/png/0.16.8/download",
        type = "tar.gz",
        sha256 = "3c3287920cb847dee3de33d301c463fba14dda99db24214ddf93f83d3021f4c6",
        strip_prefix = "png-0.16.8",
        build_file = Label("//cargo/remote:BUILD.png-0.16.8.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__pp_rs__0_2_1",
        url = "https://crates.io/api/v1/crates/pp-rs/0.2.1/download",
        type = "tar.gz",
        sha256 = "bb458bb7f6e250e6eb79d5026badc10a3ebb8f9a15d1fff0f13d17c71f4d6dee",
        strip_prefix = "pp-rs-0.2.1",
        build_file = Label("//cargo/remote:BUILD.pp-rs-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ppv_lite86__0_2_16",
        url = "https://crates.io/api/v1/crates/ppv-lite86/0.2.16/download",
        type = "tar.gz",
        sha256 = "eb9f9e6e233e5c4a35559a617bf40a4ec447db2e84c20b55a6f83167b7e57872",
        strip_prefix = "ppv-lite86-0.2.16",
        build_file = Label("//cargo/remote:BUILD.ppv-lite86-0.2.16.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__proc_macro_crate__0_1_5",
        url = "https://crates.io/api/v1/crates/proc-macro-crate/0.1.5/download",
        type = "tar.gz",
        sha256 = "1d6ea3c4595b96363c13943497db34af4460fb474a95c43f4446ad341b8c9785",
        strip_prefix = "proc-macro-crate-0.1.5",
        build_file = Label("//cargo/remote:BUILD.proc-macro-crate-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__proc_macro_crate__1_1_0",
        url = "https://crates.io/api/v1/crates/proc-macro-crate/1.1.0/download",
        type = "tar.gz",
        sha256 = "1ebace6889caf889b4d3f76becee12e90353f2b8c7d875534a71e5742f8f6f83",
        strip_prefix = "proc-macro-crate-1.1.0",
        build_file = Label("//cargo/remote:BUILD.proc-macro-crate-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__proc_macro2__1_0_36",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.36/download",
        type = "tar.gz",
        sha256 = "c7342d5883fbccae1cc37a2353b09c87c9b0f3afd73f5fb9bba687a1f733b029",
        strip_prefix = "proc-macro2-1.0.36",
        build_file = Label("//cargo/remote:BUILD.proc-macro2-1.0.36.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__profiling__1_0_5",
        url = "https://crates.io/api/v1/crates/profiling/1.0.5/download",
        type = "tar.gz",
        sha256 = "9145ac0af1d93c638c98c40cf7d25665f427b2a44ad0a99b1dccf3e2f25bb987",
        strip_prefix = "profiling-1.0.5",
        build_file = Label("//cargo/remote:BUILD.profiling-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__quote__1_0_15",
        url = "https://crates.io/api/v1/crates/quote/1.0.15/download",
        type = "tar.gz",
        sha256 = "864d3e96a899863136fc6e99f3d7cae289dafe43bf2c5ac19b70df7210c0a145",
        strip_prefix = "quote-1.0.15",
        build_file = Label("//cargo/remote:BUILD.quote-1.0.15.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rand__0_8_4",
        url = "https://crates.io/api/v1/crates/rand/0.8.4/download",
        type = "tar.gz",
        sha256 = "2e7573632e6454cf6b99d7aac4ccca54be06da05aca2ef7423d22d27d4d4bcd8",
        strip_prefix = "rand-0.8.4",
        build_file = Label("//cargo/remote:BUILD.rand-0.8.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rand_chacha__0_3_1",
        url = "https://crates.io/api/v1/crates/rand_chacha/0.3.1/download",
        type = "tar.gz",
        sha256 = "e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88",
        strip_prefix = "rand_chacha-0.3.1",
        build_file = Label("//cargo/remote:BUILD.rand_chacha-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rand_core__0_6_3",
        url = "https://crates.io/api/v1/crates/rand_core/0.6.3/download",
        type = "tar.gz",
        sha256 = "d34f1408f55294453790c48b2f1ebbb1c5b4b7563eb1f418bcfcfdbb06ebb4e7",
        strip_prefix = "rand_core-0.6.3",
        build_file = Label("//cargo/remote:BUILD.rand_core-0.6.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rand_hc__0_3_1",
        url = "https://crates.io/api/v1/crates/rand_hc/0.3.1/download",
        type = "tar.gz",
        sha256 = "d51e9f596de227fda2ea6c84607f5558e196eeaf43c986b724ba4fb8fdf497e7",
        strip_prefix = "rand_hc-0.3.1",
        build_file = Label("//cargo/remote:BUILD.rand_hc-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__range_alloc__0_1_2",
        url = "https://crates.io/api/v1/crates/range-alloc/0.1.2/download",
        type = "tar.gz",
        sha256 = "63e935c45e09cc6dcf00d2f0b2d630a58f4095320223d47fc68918722f0538b6",
        strip_prefix = "range-alloc-0.1.2",
        build_file = Label("//cargo/remote:BUILD.range-alloc-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__raw_window_handle__0_4_2",
        url = "https://crates.io/api/v1/crates/raw-window-handle/0.4.2/download",
        type = "tar.gz",
        sha256 = "fba75eee94a9d5273a68c9e1e105d9cffe1ef700532325788389e5a83e2522b7",
        strip_prefix = "raw-window-handle-0.4.2",
        build_file = Label("//cargo/remote:BUILD.raw-window-handle-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rectangle_pack__0_4_2",
        url = "https://crates.io/api/v1/crates/rectangle-pack/0.4.2/download",
        type = "tar.gz",
        sha256 = "a0d463f2884048e7153449a55166f91028d5b0ea53c79377099ce4e8cf0cf9bb",
        strip_prefix = "rectangle-pack-0.4.2",
        build_file = Label("//cargo/remote:BUILD.rectangle-pack-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__redox_syscall__0_2_10",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.2.10/download",
        type = "tar.gz",
        sha256 = "8383f39639269cde97d255a32bdb68c047337295414940c68bdd30c2e13203ff",
        strip_prefix = "redox_syscall-0.2.10",
        build_file = Label("//cargo/remote:BUILD.redox_syscall-0.2.10.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__regex__1_5_4",
        url = "https://crates.io/api/v1/crates/regex/1.5.4/download",
        type = "tar.gz",
        sha256 = "d07a8629359eb56f1e2fb1652bb04212c072a87ba68546a04065d525673ac461",
        strip_prefix = "regex-1.5.4",
        build_file = Label("//cargo/remote:BUILD.regex-1.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__regex_automata__0_1_10",
        url = "https://crates.io/api/v1/crates/regex-automata/0.1.10/download",
        type = "tar.gz",
        sha256 = "6c230d73fb8d8c1b9c0b3135c5142a8acee3a0558fb8db5cf1cb65f8d7862132",
        strip_prefix = "regex-automata-0.1.10",
        build_file = Label("//cargo/remote:BUILD.regex-automata-0.1.10.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__regex_syntax__0_6_25",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.25/download",
        type = "tar.gz",
        sha256 = "f497285884f3fcff424ffc933e56d7cbca511def0c9831a7f9b5f6153e3cc89b",
        strip_prefix = "regex-syntax-0.6.25",
        build_file = Label("//cargo/remote:BUILD.regex-syntax-0.6.25.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__renderdoc_sys__0_7_1",
        url = "https://crates.io/api/v1/crates/renderdoc-sys/0.7.1/download",
        type = "tar.gz",
        sha256 = "f1382d1f0a252c4bf97dc20d979a2fdd05b024acd7c2ed0f7595d7817666a157",
        strip_prefix = "renderdoc-sys-0.7.1",
        build_file = Label("//cargo/remote:BUILD.renderdoc-sys-0.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rodio__0_14_0",
        url = "https://crates.io/api/v1/crates/rodio/0.14.0/download",
        type = "tar.gz",
        sha256 = "4d98f5e557b61525057e2bc142c8cd7f0e70d75dc32852309bec440e6e046bf9",
        strip_prefix = "rodio-0.14.0",
        build_file = Label("//cargo/remote:BUILD.rodio-0.14.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ron__0_7_0",
        url = "https://crates.io/api/v1/crates/ron/0.7.0/download",
        type = "tar.gz",
        sha256 = "1b861ecaade43ac97886a512b360d01d66be9f41f3c61088b42cedf92e03d678",
        strip_prefix = "ron-0.7.0",
        build_file = Label("//cargo/remote:BUILD.ron-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rustc_hash__1_1_0",
        url = "https://crates.io/api/v1/crates/rustc-hash/1.1.0/download",
        type = "tar.gz",
        sha256 = "08d43f7aa6b08d49f382cde6a7982047c3426db949b1424bc4b7ec9ae12c6ce2",
        strip_prefix = "rustc-hash-1.1.0",
        build_file = Label("//cargo/remote:BUILD.rustc-hash-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rustc_version__0_2_3",
        url = "https://crates.io/api/v1/crates/rustc_version/0.2.3/download",
        type = "tar.gz",
        sha256 = "138e3e0acb6c9fb258b19b67cb8abd63c00679d2851805ea151465464fe9030a",
        strip_prefix = "rustc_version-0.2.3",
        build_file = Label("//cargo/remote:BUILD.rustc_version-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__rusty_xinput__1_2_0",
        url = "https://crates.io/api/v1/crates/rusty-xinput/1.2.0/download",
        type = "tar.gz",
        sha256 = "d2aa654bc32eb9ca14cce1a084abc9dfe43949a4547c35269a094c39272db3bb",
        strip_prefix = "rusty-xinput-1.2.0",
        build_file = Label("//cargo/remote:BUILD.rusty-xinput-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ryu__1_0_9",
        url = "https://crates.io/api/v1/crates/ryu/1.0.9/download",
        type = "tar.gz",
        sha256 = "73b4b750c782965c211b42f022f59af1fbceabdd026623714f104152f1ec149f",
        strip_prefix = "ryu-1.0.9",
        build_file = Label("//cargo/remote:BUILD.ryu-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__same_file__1_0_6",
        url = "https://crates.io/api/v1/crates/same-file/1.0.6/download",
        type = "tar.gz",
        sha256 = "93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502",
        strip_prefix = "same-file-1.0.6",
        build_file = Label("//cargo/remote:BUILD.same-file-1.0.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__scoped_threadpool__0_1_9",
        url = "https://crates.io/api/v1/crates/scoped_threadpool/0.1.9/download",
        type = "tar.gz",
        sha256 = "1d51f5df5af43ab3f1360b429fa5e0152ac5ce8c0bd6485cae490332e96846a8",
        strip_prefix = "scoped_threadpool-0.1.9",
        build_file = Label("//cargo/remote:BUILD.scoped_threadpool-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__scopeguard__1_1_0",
        url = "https://crates.io/api/v1/crates/scopeguard/1.1.0/download",
        type = "tar.gz",
        sha256 = "d29ab0c6d3fc0ee92fe66e2d99f700eab17a8d57d1c1d3b748380fb20baa78cd",
        strip_prefix = "scopeguard-1.1.0",
        build_file = Label("//cargo/remote:BUILD.scopeguard-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__semver__0_9_0",
        url = "https://crates.io/api/v1/crates/semver/0.9.0/download",
        type = "tar.gz",
        sha256 = "1d7eb9ef2c18661902cc47e535f9bc51b78acd254da71d375c2f6720d9a40403",
        strip_prefix = "semver-0.9.0",
        build_file = Label("//cargo/remote:BUILD.semver-0.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__semver_parser__0_7_0",
        url = "https://crates.io/api/v1/crates/semver-parser/0.7.0/download",
        type = "tar.gz",
        sha256 = "388a1df253eca08550bef6c72392cfe7c30914bf41df5269b68cbd6ff8f570a3",
        strip_prefix = "semver-parser-0.7.0",
        build_file = Label("//cargo/remote:BUILD.semver-parser-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__serde__1_0_136",
        url = "https://crates.io/api/v1/crates/serde/1.0.136/download",
        type = "tar.gz",
        sha256 = "ce31e24b01e1e524df96f1c2fdd054405f8d7376249a5110886fb4b658484789",
        strip_prefix = "serde-1.0.136",
        build_file = Label("//cargo/remote:BUILD.serde-1.0.136.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__serde_derive__1_0_136",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.136/download",
        type = "tar.gz",
        sha256 = "08597e7152fcd306f41838ed3e37be9eaeed2b61c42e2117266a554fab4662f9",
        strip_prefix = "serde_derive-1.0.136",
        build_file = Label("//cargo/remote:BUILD.serde_derive-1.0.136.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__serde_json__1_0_78",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.78/download",
        type = "tar.gz",
        sha256 = "d23c1ba4cf0efd44be32017709280b32d1cea5c3f1275c3b6d9e8bc54f758085",
        strip_prefix = "serde_json-1.0.78",
        build_file = Label("//cargo/remote:BUILD.serde_json-1.0.78.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__sha1__0_6_1",
        url = "https://crates.io/api/v1/crates/sha1/0.6.1/download",
        type = "tar.gz",
        sha256 = "c1da05c97445caa12d05e848c4a4fcbbea29e748ac28f7e80e9b010392063770",
        strip_prefix = "sha1-0.6.1",
        build_file = Label("//cargo/remote:BUILD.sha1-0.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__sha1_smol__1_0_0",
        url = "https://crates.io/api/v1/crates/sha1_smol/1.0.0/download",
        type = "tar.gz",
        sha256 = "ae1a47186c03a32177042e55dbc5fd5aee900b8e0069a8d70fba96a9375cd012",
        strip_prefix = "sha1_smol-1.0.0",
        build_file = Label("//cargo/remote:BUILD.sha1_smol-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__sharded_slab__0_1_4",
        url = "https://crates.io/api/v1/crates/sharded-slab/0.1.4/download",
        type = "tar.gz",
        sha256 = "900fba806f70c630b0a382d0d825e17a0f19fcd059a2ade1ff237bcddf446b31",
        strip_prefix = "sharded-slab-0.1.4",
        build_file = Label("//cargo/remote:BUILD.sharded-slab-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__shlex__0_1_1",
        url = "https://crates.io/api/v1/crates/shlex/0.1.1/download",
        type = "tar.gz",
        sha256 = "7fdf1b9db47230893d76faad238fd6097fd6d6a9245cd7a4d90dbd639536bbd2",
        strip_prefix = "shlex-0.1.1",
        build_file = Label("//cargo/remote:BUILD.shlex-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__slab__0_4_5",
        url = "https://crates.io/api/v1/crates/slab/0.4.5/download",
        type = "tar.gz",
        sha256 = "9def91fd1e018fe007022791f865d0ccc9b3a0d5001e01aabb8b40e46000afb5",
        strip_prefix = "slab-0.4.5",
        build_file = Label("//cargo/remote:BUILD.slab-0.4.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__slotmap__1_0_6",
        url = "https://crates.io/api/v1/crates/slotmap/1.0.6/download",
        type = "tar.gz",
        sha256 = "e1e08e261d0e8f5c43123b7adf3e4ca1690d655377ac93a03b2c9d3e98de1342",
        strip_prefix = "slotmap-1.0.6",
        build_file = Label("//cargo/remote:BUILD.slotmap-1.0.6.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__smallvec__1_8_0",
        url = "https://crates.io/api/v1/crates/smallvec/1.8.0/download",
        type = "tar.gz",
        sha256 = "f2dd574626839106c320a323308629dcb1acfc96e32a8cba364ddc61ac23ee83",
        strip_prefix = "smallvec-1.8.0",
        build_file = Label("//cargo/remote:BUILD.smallvec-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__spirv__0_2_0_1_5_4",
        url = "https://crates.io/api/v1/crates/spirv/0.2.0+1.5.4/download",
        type = "tar.gz",
        sha256 = "246bfa38fe3db3f1dfc8ca5a2cdeb7348c78be2112740cc0ec8ef18b6d94f830",
        strip_prefix = "spirv-0.2.0+1.5.4",
        build_file = Label("//cargo/remote:BUILD.spirv-0.2.0+1.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__stdweb__0_1_3",
        url = "https://crates.io/api/v1/crates/stdweb/0.1.3/download",
        type = "tar.gz",
        sha256 = "ef5430c8e36b713e13b48a9f709cc21e046723fe44ce34587b73a830203b533e",
        strip_prefix = "stdweb-0.1.3",
        build_file = Label("//cargo/remote:BUILD.stdweb-0.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__stdweb__0_4_20",
        url = "https://crates.io/api/v1/crates/stdweb/0.4.20/download",
        type = "tar.gz",
        sha256 = "d022496b16281348b52d0e30ae99e01a73d737b2f45d38fed4edf79f9325a1d5",
        strip_prefix = "stdweb-0.4.20",
        build_file = Label("//cargo/remote:BUILD.stdweb-0.4.20.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__stdweb_derive__0_5_3",
        url = "https://crates.io/api/v1/crates/stdweb-derive/0.5.3/download",
        type = "tar.gz",
        sha256 = "c87a60a40fccc84bef0652345bbbbbe20a605bf5d0ce81719fc476f5c03b50ef",
        strip_prefix = "stdweb-derive-0.5.3",
        build_file = Label("//cargo/remote:BUILD.stdweb-derive-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__stdweb_internal_macros__0_2_9",
        url = "https://crates.io/api/v1/crates/stdweb-internal-macros/0.2.9/download",
        type = "tar.gz",
        sha256 = "58fa5ff6ad0d98d1ffa8cb115892b6e69d67799f6763e162a1c9db421dc22e11",
        strip_prefix = "stdweb-internal-macros-0.2.9",
        build_file = Label("//cargo/remote:BUILD.stdweb-internal-macros-0.2.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__stdweb_internal_runtime__0_1_5",
        url = "https://crates.io/api/v1/crates/stdweb-internal-runtime/0.1.5/download",
        type = "tar.gz",
        sha256 = "213701ba3370744dcd1a12960caa4843b3d68b4d1c0a5d575e0d65b2ee9d16c0",
        strip_prefix = "stdweb-internal-runtime-0.1.5",
        build_file = Label("//cargo/remote:BUILD.stdweb-internal-runtime-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__stretch__0_3_2",
        url = "https://crates.io/api/v1/crates/stretch/0.3.2/download",
        type = "tar.gz",
        sha256 = "7b0dc6d20ce137f302edf90f9cd3d278866fd7fb139efca6f246161222ad6d87",
        strip_prefix = "stretch-0.3.2",
        build_file = Label("//cargo/remote:BUILD.stretch-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__strsim__0_10_0",
        url = "https://crates.io/api/v1/crates/strsim/0.10.0/download",
        type = "tar.gz",
        sha256 = "73473c0e59e6d5812c5dfe2a064a6444949f089e20eec9a2e5506596494e4623",
        strip_prefix = "strsim-0.10.0",
        build_file = Label("//cargo/remote:BUILD.strsim-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__strsim__0_9_3",
        url = "https://crates.io/api/v1/crates/strsim/0.9.3/download",
        type = "tar.gz",
        sha256 = "6446ced80d6c486436db5c078dde11a9f73d42b57fb273121e160b84f63d894c",
        strip_prefix = "strsim-0.9.3",
        build_file = Label("//cargo/remote:BUILD.strsim-0.9.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__svg_fmt__0_4_1",
        url = "https://crates.io/api/v1/crates/svg_fmt/0.4.1/download",
        type = "tar.gz",
        sha256 = "8fb1df15f412ee2e9dfc1c504260fa695c1c3f10fe9f4a6ee2d2184d7d6450e2",
        strip_prefix = "svg_fmt-0.4.1",
        build_file = Label("//cargo/remote:BUILD.svg_fmt-0.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__syn__1_0_86",
        url = "https://crates.io/api/v1/crates/syn/1.0.86/download",
        type = "tar.gz",
        sha256 = "8a65b3f4ffa0092e9887669db0eae07941f023991ab58ea44da8fe8e2d511c6b",
        strip_prefix = "syn-1.0.86",
        build_file = Label("//cargo/remote:BUILD.syn-1.0.86.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__termcolor__1_1_2",
        url = "https://crates.io/api/v1/crates/termcolor/1.1.2/download",
        type = "tar.gz",
        sha256 = "2dfed899f0eb03f32ee8c6a0aabdb8a7949659e3466561fc0adf54e26d88c5f4",
        strip_prefix = "termcolor-1.1.2",
        build_file = Label("//cargo/remote:BUILD.termcolor-1.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__thiserror__1_0_30",
        url = "https://crates.io/api/v1/crates/thiserror/1.0.30/download",
        type = "tar.gz",
        sha256 = "854babe52e4df1653706b98fcfc05843010039b406875930a70e4d9644e5c417",
        strip_prefix = "thiserror-1.0.30",
        build_file = Label("//cargo/remote:BUILD.thiserror-1.0.30.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__thiserror_impl__1_0_30",
        url = "https://crates.io/api/v1/crates/thiserror-impl/1.0.30/download",
        type = "tar.gz",
        sha256 = "aa32fd3f627f367fe16f893e2597ae3c05020f8bba2666a4e6ea73d377e5714b",
        strip_prefix = "thiserror-impl-1.0.30",
        build_file = Label("//cargo/remote:BUILD.thiserror-impl-1.0.30.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__thread_local__1_1_4",
        url = "https://crates.io/api/v1/crates/thread_local/1.1.4/download",
        type = "tar.gz",
        sha256 = "5516c27b78311c50bf42c071425c560ac799b11c30b31f87e3081965fe5e0180",
        strip_prefix = "thread_local-1.1.4",
        build_file = Label("//cargo/remote:BUILD.thread_local-1.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tinyvec__1_5_1",
        url = "https://crates.io/api/v1/crates/tinyvec/1.5.1/download",
        type = "tar.gz",
        sha256 = "2c1c1d5a42b6245520c249549ec267180beaffcc0615401ac8e31853d4b6d8d2",
        strip_prefix = "tinyvec-1.5.1",
        build_file = Label("//cargo/remote:BUILD.tinyvec-1.5.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tinyvec_macros__0_1_0",
        url = "https://crates.io/api/v1/crates/tinyvec_macros/0.1.0/download",
        type = "tar.gz",
        sha256 = "cda74da7e1a664f795bb1f8a87ec406fb89a02522cf6e50620d016add6dbbf5c",
        strip_prefix = "tinyvec_macros-0.1.0",
        build_file = Label("//cargo/remote:BUILD.tinyvec_macros-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__toml__0_5_8",
        url = "https://crates.io/api/v1/crates/toml/0.5.8/download",
        type = "tar.gz",
        sha256 = "a31142970826733df8241ef35dc040ef98c679ab14d7c3e54d827099b3acecaa",
        strip_prefix = "toml-0.5.8",
        build_file = Label("//cargo/remote:BUILD.toml-0.5.8.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tracing__0_1_29",
        url = "https://crates.io/api/v1/crates/tracing/0.1.29/download",
        type = "tar.gz",
        sha256 = "375a639232caf30edfc78e8d89b2d4c375515393e7af7e16f01cd96917fb2105",
        strip_prefix = "tracing-0.1.29",
        build_file = Label("//cargo/remote:BUILD.tracing-0.1.29.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tracing_attributes__0_1_18",
        url = "https://crates.io/api/v1/crates/tracing-attributes/0.1.18/download",
        type = "tar.gz",
        sha256 = "f4f480b8f81512e825f337ad51e94c1eb5d3bbdf2b363dcd01e2b19a9ffe3f8e",
        strip_prefix = "tracing-attributes-0.1.18",
        build_file = Label("//cargo/remote:BUILD.tracing-attributes-0.1.18.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tracing_core__0_1_21",
        url = "https://crates.io/api/v1/crates/tracing-core/0.1.21/download",
        type = "tar.gz",
        sha256 = "1f4ed65637b8390770814083d20756f87bfa2c21bf2f110babdc5438351746e4",
        strip_prefix = "tracing-core-0.1.21",
        build_file = Label("//cargo/remote:BUILD.tracing-core-0.1.21.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tracing_log__0_1_2",
        url = "https://crates.io/api/v1/crates/tracing-log/0.1.2/download",
        type = "tar.gz",
        sha256 = "a6923477a48e41c1951f1999ef8bb5a3023eb723ceadafe78ffb65dc366761e3",
        strip_prefix = "tracing-log-0.1.2",
        build_file = Label("//cargo/remote:BUILD.tracing-log-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tracing_subscriber__0_3_7",
        url = "https://crates.io/api/v1/crates/tracing-subscriber/0.3.7/download",
        type = "tar.gz",
        sha256 = "5312f325fe3588e277415f5a6cca1f4ccad0f248c4cd5a4bd33032d7286abc22",
        strip_prefix = "tracing-subscriber-0.3.7",
        build_file = Label("//cargo/remote:BUILD.tracing-subscriber-0.3.7.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__tracing_wasm__0_2_1",
        url = "https://crates.io/api/v1/crates/tracing-wasm/0.2.1/download",
        type = "tar.gz",
        sha256 = "4575c663a174420fa2d78f4108ff68f65bf2fbb7dd89f33749b6e826b3626e07",
        strip_prefix = "tracing-wasm-0.2.1",
        build_file = Label("//cargo/remote:BUILD.tracing-wasm-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__ttf_parser__0_14_0",
        url = "https://crates.io/api/v1/crates/ttf-parser/0.14.0/download",
        type = "tar.gz",
        sha256 = "4ccbe8381883510b6a2d8f1e32905bddd178c11caef8083086d0c0c9ab0ac281",
        strip_prefix = "ttf-parser-0.14.0",
        build_file = Label("//cargo/remote:BUILD.ttf-parser-0.14.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__unicode_width__0_1_9",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.9/download",
        type = "tar.gz",
        sha256 = "3ed742d4ea2bd1176e236172c8429aaf54486e7ac098db29ffe6529e0ce50973",
        strip_prefix = "unicode-width-0.1.9",
        build_file = Label("//cargo/remote:BUILD.unicode-width-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__unicode_xid__0_2_2",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.2/download",
        type = "tar.gz",
        sha256 = "8ccb82d61f80a663efe1f787a51b16b5a51e3314d6ac365b08639f52387b33f3",
        strip_prefix = "unicode-xid-0.2.2",
        build_file = Label("//cargo/remote:BUILD.unicode-xid-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__uuid__0_8_2",
        url = "https://crates.io/api/v1/crates/uuid/0.8.2/download",
        type = "tar.gz",
        sha256 = "bc5cf98d8186244414c848017f0e2676b3fcb46807f6668a97dfe67359a3c4b7",
        strip_prefix = "uuid-0.8.2",
        build_file = Label("//cargo/remote:BUILD.uuid-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__vec_map__0_8_2",
        url = "https://crates.io/api/v1/crates/vec_map/0.8.2/download",
        type = "tar.gz",
        sha256 = "f1bddf1187be692e79c5ffeab891132dfb0f236ed36a43c7ed39f1165ee20191",
        strip_prefix = "vec_map-0.8.2",
        build_file = Label("//cargo/remote:BUILD.vec_map-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__version_check__0_9_4",
        url = "https://crates.io/api/v1/crates/version_check/0.9.4/download",
        type = "tar.gz",
        sha256 = "49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f",
        strip_prefix = "version_check-0.9.4",
        build_file = Label("//cargo/remote:BUILD.version_check-0.9.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__waker_fn__1_1_0",
        url = "https://crates.io/api/v1/crates/waker-fn/1.1.0/download",
        type = "tar.gz",
        sha256 = "9d5b2c62b4012a3e1eca5a7e077d13b3bf498c4073e33ccd58626607748ceeca",
        strip_prefix = "waker-fn-1.1.0",
        build_file = Label("//cargo/remote:BUILD.waker-fn-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__walkdir__2_3_2",
        url = "https://crates.io/api/v1/crates/walkdir/2.3.2/download",
        type = "tar.gz",
        sha256 = "808cf2735cd4b6866113f648b791c6adc5714537bc222d9347bb203386ffda56",
        strip_prefix = "walkdir-2.3.2",
        build_file = Label("//cargo/remote:BUILD.walkdir-2.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wasi__0_10_2_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.10.2+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "fd6fbd9a79829dd1ad0cc20627bf1ed606756a7f77edff7b66b7064f9cb327c6",
        strip_prefix = "wasi-0.10.2+wasi-snapshot-preview1",
        build_file = Label("//cargo/remote:BUILD.wasi-0.10.2+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wasm_bindgen__0_2_79",
        url = "https://crates.io/api/v1/crates/wasm-bindgen/0.2.79/download",
        type = "tar.gz",
        sha256 = "25f1af7423d8588a3d840681122e72e6a24ddbcb3f0ec385cac0d12d24256c06",
        strip_prefix = "wasm-bindgen-0.2.79",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-0.2.79.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wasm_bindgen_backend__0_2_79",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-backend/0.2.79/download",
        type = "tar.gz",
        sha256 = "8b21c0df030f5a177f3cba22e9bc4322695ec43e7257d865302900290bcdedca",
        strip_prefix = "wasm-bindgen-backend-0.2.79",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-backend-0.2.79.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wasm_bindgen_futures__0_4_29",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-futures/0.4.29/download",
        type = "tar.gz",
        sha256 = "2eb6ec270a31b1d3c7e266b999739109abce8b6c87e4b31fcfcd788b65267395",
        strip_prefix = "wasm-bindgen-futures-0.4.29",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-futures-0.4.29.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wasm_bindgen_macro__0_2_79",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro/0.2.79/download",
        type = "tar.gz",
        sha256 = "2f4203d69e40a52ee523b2529a773d5ffc1dc0071801c87b3d270b471b80ed01",
        strip_prefix = "wasm-bindgen-macro-0.2.79",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-macro-0.2.79.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wasm_bindgen_macro_support__0_2_79",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro-support/0.2.79/download",
        type = "tar.gz",
        sha256 = "bfa8a30d46208db204854cadbb5d4baf5fcf8071ba5bf48190c3e59937962ebc",
        strip_prefix = "wasm-bindgen-macro-support-0.2.79",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-macro-support-0.2.79.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wasm_bindgen_shared__0_2_79",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-shared/0.2.79/download",
        type = "tar.gz",
        sha256 = "3d958d035c4438e28c70e4321a2911302f10135ce78a9c7834c0cab4123d06a2",
        strip_prefix = "wasm-bindgen-shared-0.2.79",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-shared-0.2.79.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__web_sys__0_3_56",
        url = "https://crates.io/api/v1/crates/web-sys/0.3.56/download",
        type = "tar.gz",
        sha256 = "c060b319f29dd25724f09a2ba1418f142f539b2be99fbf4d2d5a8f7330afb8eb",
        strip_prefix = "web-sys-0.3.56",
        build_file = Label("//cargo/remote:BUILD.web-sys-0.3.56.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wgpu__0_12_0",
        url = "https://crates.io/api/v1/crates/wgpu/0.12.0/download",
        type = "tar.gz",
        sha256 = "b97cd781ff044d6d697b632a2e212032c2e957d1afaa21dbf58069cbb8f78567",
        strip_prefix = "wgpu-0.12.0",
        build_file = Label("//cargo/remote:BUILD.wgpu-0.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wgpu_core__0_12_2",
        url = "https://crates.io/api/v1/crates/wgpu-core/0.12.2/download",
        type = "tar.gz",
        sha256 = "c4688c000eb841ca55f7b35db659b78d6e1cd77d7caf8fb929f4e181f754047d",
        strip_prefix = "wgpu-core-0.12.2",
        build_file = Label("//cargo/remote:BUILD.wgpu-core-0.12.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wgpu_hal__0_12_4",
        url = "https://crates.io/api/v1/crates/wgpu-hal/0.12.4/download",
        type = "tar.gz",
        sha256 = "93b1a9400e8d7f32dd4dd909bb9a391015d70633d639775ddd3f14d1104bc970",
        strip_prefix = "wgpu-hal-0.12.4",
        build_file = Label("//cargo/remote:BUILD.wgpu-hal-0.12.4.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__wgpu_types__0_12_0",
        url = "https://crates.io/api/v1/crates/wgpu-types/0.12.0/download",
        type = "tar.gz",
        sha256 = "549533d9e1cdd4b4cda7718d33ff500fc4c34b5467b71d76b547ae0324f3b2a2",
        strip_prefix = "wgpu-types-0.12.0",
        build_file = Label("//cargo/remote:BUILD.wgpu-types-0.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//cargo/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__winapi_util__0_1_5",
        url = "https://crates.io/api/v1/crates/winapi-util/0.1.5/download",
        type = "tar.gz",
        sha256 = "70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178",
        strip_prefix = "winapi-util-0.1.5",
        build_file = Label("//cargo/remote:BUILD.winapi-util-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__winit__0_26_1",
        url = "https://crates.io/api/v1/crates/winit/0.26.1/download",
        type = "tar.gz",
        sha256 = "9b43cc931d58b99461188607efd7acb2a093e65fc621f54cad78517a6063e73a",
        strip_prefix = "winit-0.26.1",
        build_file = Label("//cargo/remote:BUILD.winit-0.26.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__x11_dl__2_19_1",
        url = "https://crates.io/api/v1/crates/x11-dl/2.19.1/download",
        type = "tar.gz",
        sha256 = "ea26926b4ce81a6f5d9d0f3a0bc401e5a37c6ae14a1bfaa8ff6099ca80038c59",
        strip_prefix = "x11-dl-2.19.1",
        build_file = Label("//cargo/remote:BUILD.x11-dl-2.19.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cargo__xi_unicode__0_3_0",
        url = "https://crates.io/api/v1/crates/xi-unicode/0.3.0/download",
        type = "tar.gz",
        sha256 = "a67300977d3dc3f8034dae89778f502b6ba20b269527b3223ba59c0cf393bb8a",
        strip_prefix = "xi-unicode-0.3.0",
        build_file = Label("//cargo/remote:BUILD.xi-unicode-0.3.0.bazel"),
    )
