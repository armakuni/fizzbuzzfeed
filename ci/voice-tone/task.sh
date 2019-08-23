#!/usr/bin/env bash

npm -g install write-good

set +ex

cd articles/_posts

write-good *.md --no-passive