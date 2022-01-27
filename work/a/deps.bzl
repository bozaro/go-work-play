load("@tools//:repository.bzl", "add_local_repository")


def local_repositories(base, mapping=None):
    add_local_repository(
        name="ru_bozaro_go_bazel_c-v1",
        path="%s../cv1" % (base),
        mapping=mapping,
    )


def repo_mapping():
    return {
        "@ru_bozaro_go_bazel_c": "@ru_bozaro_go_bazel_c-v1",
    }
