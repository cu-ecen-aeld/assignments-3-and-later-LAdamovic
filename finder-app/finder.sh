#!/bin/sh

# This script is used to search a text string in all the files in a provided directory

# Path to the directory on the filesystem
filesdir=$1

# String to search in the files
searchstr=$2

# Check if the number of arguments is less than 2
if [ $# -lt 2 ]
then
  echo "ERROR: Invalid number of arguments"
  echo "Usage: $0 <directory> <string>"
  exit 1
fi

# Check if the directory exists
if [ ! -d $filesdir ]
then
  echo "Directory $filesdir does not exist"
  exit 1
fi

# Count all files in the provided directory and its subdirectories
x=$(find $filesdir -type f | wc -l) 

# Count the number of matching lines found in respective files
y=$(grep -r "$searchstr" $filesdir | wc -l)

# Print the number of files and matching lines
echo "The number of files are $x and the number of matching lines are $y"