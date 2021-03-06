#!/bin/bash

# Copyright 2017 The Openstack-Helm Authors.
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

set -xe

CURRENT_DIR="$(pwd)"
: ${INSTALL_PATH:="../"}

cd ${INSTALL_PATH}
git clone http://git.openstack.org/openstack/airship-shipyard
cd airship-shipyard
make

cd ${INSTALL_PATH}
git clone http://git.openstack.org/openstack/airship-deckhand
cd airship-deckhand
make

cd ${INSTALL_PATH}
git clone http://git.openstack.org/openstack/airship-armada
cd airship-armada
make images

cd ${INSTALL_PATH}
git clone http://git.openstack.org/openstack/airship-pegleg
git clone http://git.openstack.org/openstack/openstack-helm
git clone http://git.openstack.org/openstack/openstack-helm-infra

cd ${CURRENT_DIR}

