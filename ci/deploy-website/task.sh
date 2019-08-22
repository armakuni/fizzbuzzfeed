#!/usr/bin/env bash
set +ex
cd github-repo
bundle -v
gem update --system
gem install bundler
bundler update --bundler
bundle -v
jekyll build
cp _site/* ../generated-site/
cp manifest.yml ../generated-site/