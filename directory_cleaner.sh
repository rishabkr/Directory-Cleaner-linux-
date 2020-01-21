#!/bin/bash
if [ -d "$1" ];
then
cd $1
typ1=$2
typ2=$3
typ3=$4
typ4=$5
typ5=$6
if [ "$typ1" == "all" ];
then
types=$(ls |sed 's/^.*\.//'| sort -u)
for i in $types
do
	echo $i
	mkdir $i
	mv -v *.$i $i/
done
else
types=$(ls |sed 's/^.*\.//'| sort -u)
for i in $types
do
if [ "$i" == "$typ1" ];then
  
	echo $i
	mkdir $i
	mv -v *.$i $i/
elif [ "$i" == "$typ2" ];then
  
	echo $i
	mkdir $i
	mv -v *.$i $i/
elif [ "$i" == "$typ3" ];then
  
	echo $i
	mkdir $i
	mv -v *.$i $i/
elif [ "$i" == "$typ4" ];then
  
	echo $i
	mkdir $i
	mv -v *.$i $i/
elif [ "$i" == "$typ5" ];then
  
	echo $i
	mkdir $i
	mv -v *.$i $i/
fi
done
fi
else
echo "Wrong Directory Path!"
fi
exit
