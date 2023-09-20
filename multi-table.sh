#!/bin/sh
a=$1
b=$2
if [ -z $a ] || [ -z $b ] ; then
        echo "Invalid input"
        exit 1
fi
if ! [ $a -gt 1 ] || ! [ $b -gt 1 ] ; then
	echo "Input must be greater than 0"
	exit 1
fi
for i in $(seq 1 $a)
do
	for  j in $(seq 1 $b)
	do
		printf "%d*%d=%d \t" $i $j `expr $i \* $j`
	done
	echo
done
exit 0
