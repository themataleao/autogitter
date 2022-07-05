#!/bin/bash
cd /root/autogitter
filename=`cat /dev/urandom | tr -cd 'a-f0-9' | head -c 32`
filesize=1073
formats=("ts" "js" "css" "html" "py" "c" "cpp" "java" "php" "py" "swift" "cuda" )
format=${formats[ $RANDOM % ${#formats[@]} ]}
head -c $filesize </dev/urandom > "./random/$filename.$format"
./gitpusher.sh