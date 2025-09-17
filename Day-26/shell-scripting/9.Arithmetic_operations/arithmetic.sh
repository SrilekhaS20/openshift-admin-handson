#!/bin/bash
# A simple script to perform basic arithmetic operations
num1=10
num2=8

# Using double parentheses for arithmetic operations
echo "Addition: $((num1 + num2))"
echo "Subtraction: $((num1 - num2))"
echo "Multiplication: $((num1 * num2))"
echo "Division: $((num1 / num2))"

# Using expr for arithmetic operations
echo "Addition: $(expr $num1 + $num2)"
echo "Subtraction: $(expr $num1 - $num2)"
echo "Multiplication: $(expr $num1 \* $num2)"
echo "Division: $(expr $num1 / $num2)"
