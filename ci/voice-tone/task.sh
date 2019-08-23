#!/usr/bin/env bash

npm -g install write-good

set +ex

cd articles/_posts

write-good *.md --parse


# for i in $(find . -iname '*.md'); do
#     OUTPUT=$(alex $i 2>&1)
#     echo $OUTPUT
#     if [[ $OUTPUT != *"no issues found"* ]]
#     then        
#         EXITCODE=1
#     fi
# done
# exit $EXITCODE
