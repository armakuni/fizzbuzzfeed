#!/usr/bin/env bash
set +ex
cd github-repo
jekyll build
cp /app/_site/* ../generated-site/
cp /app/manifest.yml ../generated-site/