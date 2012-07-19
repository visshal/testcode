#!/bin/sh
############################################################################
# README:
# This script extracts (n) tarballs concurrently and removes the tarball
# once untar is successful. Upon even a single extraction fails script
# errors out.
#
# Usage:
# ./untar_con.sh <Path to tarballs dir>
#
# Date:
# 07/18/2012 11:42:43
# 
# Note:
# Part of Inktank Interview Questions.
#
# Author:
# Vishal Mehta
#
# Known Bug:
# 'rm -f filename' always returns true, hence verification of this command,
# should be done by 'ls filename'.
############################################################################

# Array that holds processes.
file_arr=[]
# Array that holds processes.
proc_arr=[]
# Scalar variable that keeps count of bg processes.
proc_count=0
# Get tarball from listing given dir.
for file in `ls`
do
   echo $file
   # Running bg command.
   a=`tar -zxvf $file &`
   proc_arr[$proc_count]=$!
   file_arr[$proc_count]=$file
   proc_count=`expr $proc_count + 1`
   echo $a
done

for (( i=0; i<proc_count; i++ ))
do
   echo ${proc_arr[$i]}
   # Waiting for each bg process to complete.
   if wait ${proc_arr[$i]} && `rm -f ${file_arr[$i]}`
   then
     echo "Hurray we passed."
   else
     echo "That failed :(."
     exit 1
   fi
   echo $ret
done
exit 0
