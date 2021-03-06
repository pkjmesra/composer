#!/usr/bin/env bash
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
set +e
set -v
echo deprecating all modules
for i in bond-network composer-report pii-network composer-runtime-hlf \
         composer-connector-proxy perishable-network composer-connector-hlf \
         trade-network digitalproperty-network carauction-network marbles-network \
         vehicle-lifecycle-network basic-sample-network composer.base \
         digitalproperty-model animaltracking-model composer.business \
         vehicle-lifecycle-model animaltracking-network composer.contract \
         composer.finance vehicle-manufacture-car-builder composer-rest-server \
         composer-connector-hlfv1 composer-connector-web node-red-contrib-composer \
         composer-runtime-hlfv1 composer-playground-api composer-runtime \
         composer-wallet-filesystem composer-wallet-inmemory composer-wallet-cloudant \
         composer-connector-server composer-admin composer-connector-embedded \
         composer-runtime-web composer-common composer-documentation \
         generator-hyperledger-composer composer-runtime-embedded \
         composer-cucumber-steps composer-runtime-pouchdb composer-wallet-ibmcos \
         composer-wallet-redis loopback-connector-composer letters-of-credit \
         vehicle-manufacture-manufacturing vehicle-manufacture-vda composer-cli \
         composer-client composer-playground; do
    echo deprecating $i
    npm deprecate $i "Hyperledger Composer has been deprecated. Please see the README for more details: https://github.com/hyperledger/composer/blob/master/README.md"
    echo deprecated $i
done
echo deprecated all modules