"""
Dependency to zlib
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_zlib():
    maybe(
        http_archive,
        name = "zlib",
        build_file = "//third_party/zlib:zlib.BUILD",
        sha256 = "9a93b2b7dfdac77ceba5a558a580e74667dd6fede4585b91eefb60f03b72df23",
        strip_prefix = "zlib-1.3.1",
        url = "https://zlib.net/zlib-1.3.1.tar.gz",
    )

