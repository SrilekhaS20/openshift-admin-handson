#!/bin/bash
# if statement examples
count=10
if [ $count -eq 10 ]
then
  echo "Condition is true"
fi

# if-else statement example
word=a
if [[ $word > "b" ]]
then
  echo "Alphabetical comparison is true"
else
  echo "Alphabetical comparison is false"
fi

#if-elif-else statement example
word="a"
if [ $word == "b" ]
then
  echo "String condition b is true"
elif [ $word == "a" ]
then
  echo "String condition a is false"
else
  echo "No condition matched"
fi
