#!/bin/sh

# This script creates a new file with name and path "writefile" with content "writestr", overwriting any existing file and creating the path if it doesn’t exist.

# Path to the file to be created
writefile=$1

# String to write in the file
writestr=$2

# Check if the number of arguments is less than 2
if [ $# -lt 2 ]
then
  echo "ERROR: Invalid number of arguments"
  echo "Usage: $0 <file> <string>"
  exit 1
fi

# Create the directory path if it doesn't exist
mkdir -p $(dirname $writefile)

# Write the string to the file
echo $writestr > $writefile

# Chwck if the file is created
if [ $? -ne 0 ]
then
  echo "File $writefile could not be created"
  exit 1
fi

exit 0
