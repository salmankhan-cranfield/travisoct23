#!/bin/bash


# Run PMD checks
pmd --file-list force-app/main/default/classes force-app/main/default/triggers --rulesets travis/verification/pmd-rulesets/ --format textcolor --minimum-priority PMD_MIN_PRIORITY_"$TRAVIS_BRANCH" --fail-on-violation "true"

# Store the results in a temporary file called pmd_failure in case of failure
if [[ $? -ne 0 ]]; then
  pmd_failure=$(mktemp)
  pmd --file-list force-app/main/default/classes force-app/main/default/triggers --rulesets travis/verification/pmd-rulesets/ --format textcolor --minimum-priority PMD_MIN_PRIORITY_"$TRAVIS_BRANCH" > "$pmd_failure"
fi

# Echo out the contents of the file
if [[ -f "$pmd_failure" ]]; then
  cat "$pmd_failure"
fi