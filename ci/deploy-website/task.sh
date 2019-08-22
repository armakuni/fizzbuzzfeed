#!/usr/bin/env bash
set +ex
cd github-repo
bundle -v
grep -A 1 "BUNDLED WITH" Gemfile.lock

gem uninstall bundler -x
gem install bundler
gem cleanup
bundle -v
bundle update --bundler
bundle -v
jekyll build
cp _site/* ../generated-site/
cp manifest.yml ../generated-site/