#!/bin/bash

PATH_PMD="${HOME}"/pmd-bin-"${PMD_BIN_VERSION}"

if [ -d "${PATH_PMD}/bin" ]; then
  echo -e "\nDirectory ${PATH_PMD}/bin exists. Using cache."
else
  echo -e "\nError: Directory ${PATH_PMD}/bin does not exists. Installing pmd."
  cd "${HOME}" || { echo "failed to cd ${HOME}, exit 1."; exit 1; }
  wget https://github.com/pmd/pmd/releases/download/pmd_releases%2F"${PMD_BIN_VERSION}"/pmd-bin-"${PMD_BIN_VERSION}".zip
  unzip pmd-bin-"${PMD_BIN_VERSION}".zip
  cd "${TRAVIS_BUILD_DIR}" || { echo "failed to cd ${TRAVIS_BUILD_DIR}, exit 1."; exit 1; }
fi
