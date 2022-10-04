#!/bin/bash

old=$1
new=$2

for i in $(cat $new)
do
	check=$(grep -i $i $old)
	if [ -z "$check" ]; then
		echo $i
	fi
done
