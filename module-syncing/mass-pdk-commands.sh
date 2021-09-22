#!/usr/bin/env bash

set -e

for d in `ls modules_pdksync/`; do
  echo
  echo "Working in $d"
  echo
  cd modules_pdksync/$d
  pdk $@
  cd ../../
done

