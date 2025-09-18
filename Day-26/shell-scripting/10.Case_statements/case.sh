#!/bin/bash

echo -e "Enter the character: \c"
read value

case $value in
  [a-z] )
    echo "Entered $value is between a to z" ;;
  [A-Z] )
    echo "Entered $value is between A to Z" ;;
  [0-9] )
    echo "Entered $value is between 0 to 9" ;;
  ? )
    echo "Entered $value is special character" ;;
  * )
    echo "Unknown input" ;;
esac
