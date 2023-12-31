#!/bin/bash

#
# This script manages the processes that are invoked during the pull request process
# Documentations related to SFDX CLI can be found here https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm
#

Store the output of the command in a variable
output=$(sf project deploy validate --source-dir force-app --target-org skprod --wait 120 --test-level RunLocalTests --verbose)

# Echo the content of the variable at the end of the script
echo "Command output:"
echo "$output"


