#!/bin/bash

TARGET_FILE_NAME=$(echo "$1" | awk -F/ '{print $3}')-$(echo $2 | sha1sum | cut -d' ' -f1).txt

if [ ! -f $TARGET_FILE_NAME ]; then
    echo "Fetching data"
    echo curl -G --data-urlencode "${2}" -k ${1} '>' /data/$TARGET_FILE_NAME
    curl -G --data-urlencode "${2}" -k "${1}" > /data/$TARGET_FILE_NAME
fi

echo ""

echo "Top namespaces:"
grep -oP 'namespace=.*' $TARGET_FILE_NAME | cut -d ',' -f 1 | sort | uniq -c | sort -nr | head -n 30

echo ""

echo "Top series:"
grep -v "#" $TARGET_FILE_NAME | cut -f 1 -d '{' | sort | uniq -c | sort -r | head -n 30
