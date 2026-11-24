#!/bin/sh
if [ $# -ne 2 ]; then
	echo "Error: two arguments required."
	echo "Usage: $0 <writefile> <writestr>"
	exit 1
fi
writefile=$1
writestr=$2
mkdir -p "$(dirname "$writefile")" || exit 1
echo "$writestr" > "$writefile" || exit 1
