#!/usr/bin/env bash

for d in `ls modules_pdksync/`; do
  echo "Working on $d"
  cp ../repo_standards/templates/.sync.yml modules_pdksync/$d/
  mkdir -p modules_pdksync/$d/.github/workflows
  cp ../repo_standards/templates/pr_test.yml modules_pdksync/$d/.github/workflows/
  cp ../repo_standards/templates/release.yml modules_pdksync/$d/.github/workflows/
done

