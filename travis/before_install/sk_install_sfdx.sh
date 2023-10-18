#!/bin/bash
# installing salesforceCLI
echo -e "\nInstalling Salesforce CLI\n"


SF_VERSION=SF_NODE_VERSION_"${TRAVIS_BRANCH}"

if [ "${!SF_VERSION}" = "null" ] || [ "${!SF_VERSION}" = "" ]; then
  npm i -g @salesforce/cli@latest
else
  npm i -g @salesforce/cli@"${!SF_VERSION}"
fi

sf --version

echo -e "\nSalesforce CLI installation completed\n"
