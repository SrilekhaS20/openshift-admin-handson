#!/bin/bash
# Read one user input and display a greeting message
echo "Enter your name: "
read name
echo "Hello, $name!"

# Read multiple user inputs and display them
echo "Enter names: "
read name1 name2 name3
echo "You entered: $name1, $name2, $name3"

# Enter user input on same line as prompt
read -p "Enter username: " username
read -sp "Enter password: " password # Silent input for password
echo # To add a new line after silent input
echo "Username is: $username"
echo "Password is: $password"

# Read user input as an array
echo "Enter names: "
read -a names # Read input into an array
echo "You entered: ${names[0]}, ${names[1]}, ${names[2]}"

# Read user input without passing variable names in read command
echo "Enter names: "
read # Read input without variable names
echo "You enetered: $REPLY" # Default variable REPLY holds the input
