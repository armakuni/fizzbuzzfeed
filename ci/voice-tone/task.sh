#!/usr/bin/env bash

npm -g install alex

set +ex
EXITCODE=0
cd articles/_posts
for i in $(find . -iname '*.md'); do
    OUTPUT='alex $i'
    if [[ $OUTPUT == *"no issues found"* ]]
    then
        EXITCODE=0
    else
    then
        echo $OUTPUT
        EXITCODE=1
    fi
done
exit $EXITCODE
