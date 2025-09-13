#!/bin/bash
echo $0 $1 $2 '> echo $0 $1 $2'

args=("$@") # Store all arguments in an array

echo ${args[0]} ${args[1]} ${args[2]} # Access individual arguments from the array

echo $@ # All arguments as a single string

echo $# # Number of arguments passed
