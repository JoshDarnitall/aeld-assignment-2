#!/bin/sh
# finder.sh <filesdir> <searchstr>

if [ $# -ne 2 ]; then
	echo "Error: two arguments required."
	echo "Usage: $0 <filesdir> <searchstr>"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
	echo "Error: $filesdir is not a directory."
	exit 1
fi

x=$(find "$filesdir" -type f | wc -l)
y=$(grep -r -F -- "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $x and the number of matching lines are $y"
