#!/usr/bin/env bash

for d in `ls modules_pdksync/`; do
  echo "Working in $d"
  sleep 5
  cd modules_pdksync/$d
  git diff
  cd ../../
done

