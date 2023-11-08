#!/bin/bash
#Assignment 1 part 1
#Bill Brasch


param1=$1
paramSearch=$2



if [ "$param1" = "" ] || [ "$paramSearch" = "" ]
then
   echo "One or more input paramenters were not specified"
   exit 1
else
   if ! [ -d $1 ] ; then
      echo "Filesdir does not represent a directory on the filesystem"
      exit 1
   else
      result=$(grep -cRh "$paramSearch" "$param1")
      #echo "$result"
   fi   
fi


n=1

split=$(echo $result | cut -d $'\n' -f 1-)

split2=$(echo $split | cut -d $ ' ' -f $n)

totalFind=$split2


while [[ $split2 ]]; do
   
   let n++
   split2=$(echo $split | cut -d $ ' ' -f $n)

   let totalFind=totalFind+split2
   
done

let n=n-1

echo "The number of files are $n and the number of matching lines are $totalFind"




