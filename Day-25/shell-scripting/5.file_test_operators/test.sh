#!/bin/bash
echo -e "Enter the file name: \c"
read file_name

# file exists check
if [ -e $file_name ]
then
  echo "$file_name found"
else
  echo "$file_name not found"
fi

# regular file check
if [ -f $file_name ]
then
  echo "$file_name found"
else
  echo "$file_name not found"
fi

# directory check
if [ -e $file_name ]
then
  echo "$file_name found"
else
  echo "$file_name not found"
fi

# character special file check
if [ -c $file_name ]
then
  echo "$file_name found"
else
  echo "$file_name not found"
fi

# block special file check
if [ -b $file_name ]
then
  echo "$file_name found"
else
  echo "$file_name not found"
fi

# file empty check
if [ -s $file_name ]
then
  echo "$file_name not empty"
else
  echo "$file_name empty"
fi

# file read permission check
if [ -r $file_name ]
then
  echo "$file_name readable"
else
  echo "$file_name not readable"
fi

# file write permission check
if [ -w $file_name ]
then
  echo "$file_name writable"
else
  echo "$file_name not writable"
fi

# file execute permission check
if [ -x $file_name ]
then
  echo "$file_name executable"
else
  echo "$file_name not executable"
fi
