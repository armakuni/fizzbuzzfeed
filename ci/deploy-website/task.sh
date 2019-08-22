#!/usr/bin/env bash
set +ex
chown jekyll github-repo/
cd github-repo
jekyll build
cp -a _site/ ../generated-site/
cp manifest.yml ../generated-site/
cp Staticfile ../generated-site/