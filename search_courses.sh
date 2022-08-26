#!/bin/bash

# type either 'bash search_courses.sh <expression>' or './search_courses.sh <expression>' (you will need to 'chmod 775 search_courses.sh' first)
# to display neat summaries of all comp electives that match your expression.
# the -v option gets you the inverse of your expression.

# if there are errors you might need to execute 'dos2unix comp.txt' first

if [[ "$#" -gt 2 || ( "$#" = 2 && ! "$1" = '-v' ) || ( "$#" = 1 && "$1" = '-v' ) ]]; then
    echo 'usage: ./search_courses.sh [-v] <expression>'
    exit 1
fi

if test "$#" = 2; then
    selection=$(cat comp.txt | grep -Evi "$2")
else
    selection=$(cat comp.txt | grep -Ei "$1")
fi

echo "$selection" |
sed -E 's/[ ]+(\|)/\1/g' | 
sed -E 's/$/\n/g' | 
sed -E 's/\|([^\|]+)$/\n\1/g'
