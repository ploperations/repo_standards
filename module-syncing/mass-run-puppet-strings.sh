#!/usr/bin/env bash

set -e

for d in `ls modules_pdksync/`; do
  echo "Running 'pdk bundle exec puppet strings generate --format markdown' in $d"
  cd modules_pdksync/$d
  documentation=$(pdk bundle exec puppet strings generate --format markdown 2>&1)
  if [ $(echo $documentation | grep -Ec "[1-9]+ undocumented|\[warn\]") -gt 0 ]; then
    echo "Please resolve documentation issues detected below:"
    echo "$documentation"
    exit 1
  fi
  cd ../../
done

echo "Successfully ran puppet strings on all modules"

