#!/usr/bin/env bash
set +ex
cd github-repo
bundle install
jekyll build
cp _site/* ../generated-site/
cp manifest.yml ../generated-site/