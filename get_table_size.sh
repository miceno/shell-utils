#!/bin/bash

#
# Get the size of a table
#

MAX_TABLE_SIZE=1000000

function get_table_size(){
    TABLE_NAME=${1:-g2_CacheMap}
    res=$(mysql -e "show table status like '$TABLE_NAME'\G" | \
        grep Data_length | \
        awk -F: '{print $2}')
    echo $res
}

#
# Get the size of a database
#

function database_size(){
    mysql -e "show table status"  | \
        awk -F'\t' '{print $7; s+=$7} END{ print "resultado: ", s}'
}



