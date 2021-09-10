#!/usr/bin/env bash

for d in `ls modules_pdksync/`; do
  echo "Working in $d"
  cd modules_pdksync/$d
  pdk $@
  cd ../../
done

