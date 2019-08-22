#!/usr/bin/env bash
set +ex
cd github-repo
gem update --system
gem install bundler
jekyll build
cp _site/* ../generated-site/
cp manifest.yml ../generated-site/