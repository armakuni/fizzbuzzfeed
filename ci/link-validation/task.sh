#!/usr/bin/env bash

set -euo pipefail

cd articles/_posts

npm install -g markdown-link-check

for MARKDOWN_FILE in $(find . -iname '*.md')
do
  node_modules/markdown-link-check/markdown-link-check \
    --config="../ci/link-validation/checklink-config.json" \
    "$MARKDOWN_FILE"
done
