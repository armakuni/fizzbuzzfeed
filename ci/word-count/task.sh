#!/usr/bin/env bash
set +ex
EXITCODE=0
for i in $(find . -iname '*.md'); do
    WORDCOUNT=`cat "$i" | tail +6 | wc -m`
    echo "$i has $WORDCOUNT words"
    if [ $WORDCOUNT -gt 250 ]
    then
        echo "$i contains too many words!"
        EXITCODE=1
    fi
done
exit $EXITCODE

