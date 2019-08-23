#!/usr/bin/env bash

npm -g install alex

set +ex
EXITCODE=0
cd articles/_posts
for i in $(find . -iname '*.md'); do
    alex $i
    
done
exit $EXITCODE
