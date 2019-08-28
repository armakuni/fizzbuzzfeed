#!/usr/bin/env bash
set +ex
EXITCODE=0
cd articles/_posts
for i in $(find . -iname '*.md'); do
    WORDCOUNT=`cat "$i" | tail +6 | wc -w`
    echo "$i has $WORDCOUNT words"
    if [ $WORDCOUNT -gt 55 ]
    then
        echo "$i contains too many words!"
        EXITCODE=1
    elif [ $WORDCOUNT -lt 45 ]
    then
        echo "$i contains too few words!"
        EXITCODE=1
    fi
done
exit $EXITCODE

