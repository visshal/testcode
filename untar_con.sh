#!/bin/bash
############################################################################
# README:
# This script extracts (n) tarballs concurrently and removes the tarball
# once untar is successful. Upon even a single extraction fails script
# errors out.
#
# Date:
# 07/18/2012 11:42:43
# 
# Example:
# ./untar_con.sh <press enter>
# Enter the path of tar-balls: abc
# Enter the path for extraction: newuntar
#
# Note: This script takes a path where all the tar-balls are residing.
#       And extracts all the tarballs in the extraction path provided.
#       Please provide absolute paths.
#
# Author:
# Vishal Mehta
#
############################################################################


# Function.
untar()
{
  local tar_list=$1
  local untar_dir=$2
  echo "Untar called"
  local c=0
  local procarr=[]
  for file in `ls $tar_path`
  do
    echo $file
    tar -zxf $tar_path/$file -C $untar_dir/ &
    procarr[$c]=$!
    c=`expr $c + 1`
  done

  # Wait for bg processes to be run.
  for (( i=0; i<=c; i++ ))
  do
    echo "Waiting for process : ${procarr[$i]}"
    if wait ${procarr[$i]}
    then
      echo "hurray we passed."
    else
      echo "That failed :("
      exit 1
    fi
  done
  return 0
}

# Get the path where all tarballs are kept.
echo -e "Enter the abs path of tar-balls: \c"
read tar_path
if [ ! -d $tar_path ]
then 
  echo "$tar_path : No such path exist."
  exit 1
fi

# Get the path where all the tarballs need to be extracted.
echo -e "Enter the abs path for extraction: \c"
read untar_path
if [ ! -d $untar_path ]
then 
  echo "$untar_path : No such path exist."
  exit 1
fi

# Calling untar function.
untar $tar_path, $untar_path

exit 0
