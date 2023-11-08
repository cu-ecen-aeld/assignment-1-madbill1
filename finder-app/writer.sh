#!/bin/bash
#Assignment 1 part 2
#Bill Brasch


paramFile=$1
paramWrite=$2


if [ "$paramFile" = "" ] || [ "$paramWrite" = "" ]
then
   echo "One or more input paramenters were not specified"
   exit 1
else
      
   path=$(dirname "$paramFile")
   
   mkdir -p $path
   
   echo "$paramWrite" > "$paramFile"
      
   if [ ! -e "$paramFile" ] ; then
      echo "File could not be created"
      exit 1      
   fi   
fi





