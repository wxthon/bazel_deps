# -*- python -*-

# Copyright 2018 Josh Pieper, jjp@pobox.com.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@com_github_mjbots_bazel_deps//tools/workspace:template_file.bzl",
     "template_file")

package(default_visibility = ["//visibility:public"])

# Ported from build/meson/lib/meson.build
cc_library(
    name = "libpaddle-cpu",
    hdrs = glob(["paddle/include/*.h", "paddle/include/**/*.h"]),
    srcs = ["paddle/lib/libpaddle_fluid.so"],
    includes = [
        "paddle/include",
    ],
    strip_include_prefix = "paddle/include",
	linkopts = [""],
    copts = ["-std=c++14"],
)
