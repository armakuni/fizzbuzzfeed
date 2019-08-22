#!/usr/bin/env bash
set +ex
git config --global user.email "concourse@armakuni.com"
git config --global user.name "Concourse"
git clone website-repo updated-website
cp -a github-repo/docs/* updated-website
cd updated-website
git add .
git commit -m "Updating website" || true