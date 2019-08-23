#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

npm install 

for MARKDOWN_FILE in $(find . -iname '*.md' -not -path "./node_modules/*" -print)
do
  node_modules/markdown-link-check/markdown-link-check \
    --config="$SCRIPT_DIR/checklink-config.json" \
    "$MARKDOWN_FILE"
done
