#!/usr/bin/env bash
set +ex
cd github-repo
bundle -v
grep -A 1 "BUNDLED WITH" Gemfile.lock
jekyll build
cp _site/* ../generated-site/
cp manifest.yml ../generated-site/