#!/bin/bash

# Check if a table has exceeded the limit

. $HOME/bin/get_table_size.sh

s=$(get_table_size $1)
echo "s: " $s

if [ "$s" -gt $MAX_TABLE_SIZE ];
then
   echo "table $1: max size exceeded"
else
   echo "table $1: within the allowed limits"
fi
