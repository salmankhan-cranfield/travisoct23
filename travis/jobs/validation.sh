#!/bin/bash

#
# This script manages the processes that are invoked during the pull request process
# Documentations related to SFDX CLI can be found here https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm
#

temp=$(mktemp)

sf project deploy validate --source-dir force-app --target-org skprod --wait 120 --test-level RunLocalTests --verbose >> $temp
echo "Command output:"
cat "$temp"
echo "Value of temp variable: $temp"


