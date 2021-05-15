#!/bin/bash
source functions.sh

FILE=$1
fileExist ${FILE}

echo "🔎 Performing checks"
echo
echo "diff <(head -n599 ${FILE}) done.txt"
diff <(head -n599 ${FILE}) done.txt
check $?
echo

summary
