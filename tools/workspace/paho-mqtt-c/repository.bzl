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

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def paho_mqtt_c_repository(name):
    http_archive(
        name = name,
        urls = [
            "https://github.com/eclipse/paho.mqtt.c/archive/v1.3.5.tar.gz",
        ],
        #sha256 = "59ef70ebb757ffe74a7b3fe9c305e2ba3350021a918d168a046c6300aeea9315",
        strip_prefix = "paho.mqtt.c-1.3.5",
        build_file = Label("//tools/workspace/paho-mqtt-c:package.BUILD"),
    )
