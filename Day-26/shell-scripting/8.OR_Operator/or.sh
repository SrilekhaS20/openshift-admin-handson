#!/bin/bash
age=20

# Check if age is less than 18 or greater than 30
# if [ $age -gt 18 ] || [ $age -lt 30 ]
# if [[ $age -gt 18 || $age -lt 30 ]]
if [ $age -gt 18 -o $age -lt 30 ]
then
  echo "You are eligible for the youth program."
else
  echo "You are not eligible for the youth program."
fi
