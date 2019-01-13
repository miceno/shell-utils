#!/bin/bash

# List all the tables and sizes
mysql -e "show table status"  | awk -F'\t' '\
{\
    printf ("%-25s %15d\n", $1,$7); \
    s+=$7 \
} \
END{ print "resultado: ", s} \
'
