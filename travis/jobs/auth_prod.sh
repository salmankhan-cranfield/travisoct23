#!/bin/bash

#
# This script manages the processes that are invoked during the pull request process
# Documentations related to SFDX CLI can be found here https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm
#

# shellcheck disable=SC2154
openssl aes-256-cbc -K $encrypted_79a2f6093848_key -iv $encrypted_79a2f6093848_iv -in server.key.enc -out assets/server.key -d

ENVIRONMENT="skprod"
CERT_PATH="assets/server.key"
CLIENT_ID="${ENVIRONMENT}_CONSUMERKEY"
USERNAME="${ENVIRONMENT}_USERNAME"
INSTANCE_URL="${ENVIRONMENT}_INSTANCE_URL"

sf org login jwt -i "${!CLIENT_ID}" -f "${CERT_PATH}" -o "${!USERNAME}" -a "skprod" -r "${!INSTANCE_URL}" 

