#!/bin/sh

if [ $# -ne 2 ]
then
    echo "Error: Two arguments required."
    exit 1
fi

writefile=$1
writestr=$2

dirpath=$(dirname "$writefile")

mkdir -p "$dirpath"

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Could not create file '$writefile'."
    exit 1
fi

echo "File '$writefile' created successfully with content: $writestr"

exit 0