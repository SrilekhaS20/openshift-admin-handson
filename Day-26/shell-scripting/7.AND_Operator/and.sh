#!/bin/bash
age=29

# Check if age is between 18 and 30
# if [ $age -gt 18 ] && [ $age -lt 30 ] # This also works
# if [[ $age -gt 18 && $age -lt 30 ]] # This also works
if [ $age -gt 18 -a $age -lt 30 ]
then
  echo "You are eligible for the youth program."
else
  echo "You are not eligible for the youth program."
fi