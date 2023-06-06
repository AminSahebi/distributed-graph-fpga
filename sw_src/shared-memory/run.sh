#!/bin/bash

if [ "$3" = "" ]; then echo "You must specify executable name, dataste path and No. of Vertices"; exit 1; fi

# get the executable name
exec=$1

# get the dataset path
i=$2

#get the No. of vertices
j=$3

set -x

$exec $i $j 
