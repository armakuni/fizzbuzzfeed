#!/usr/bin/env bash

npm -g install alex

set +ex
EXITCODE=0
cd articles/_posts
for i in $(find . -iname '*.md'); do
    OUTPUT=$(alex $i 2>&1)
    echo $OUTPUT
    if [[ $OUTPUT != *"no issues found"* ]]
    then        
        EXITCODE=1
    fi
done
exit $EXITCODE
