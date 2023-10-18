#!/bin/bash

#
# This script manages the processes that are invoked during the pull request process
# Documentation related to SFDX CLI can be found here https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm
#



sf project deploy validate --source-dir force-app --target-org skprod --wait 120 --test-level RunLocalTests
