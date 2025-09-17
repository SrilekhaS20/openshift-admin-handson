#!/bin/bash
# A script to demonstrate floating point arithmetic in bash using bc

num1=25.5
num2=5

echo "$num1+$num2" | bc
echo "$num1-$num2" | bc
echo "$num1*$num2" | bc
echo "scale=2; $num1/$num2" | bc # scale=2 sets the precision to 2 decimal places
echo "scale=2; $num1%$num2" | bc # modulus operation with scale

num=4

echo "scale=2; sqrt($num)" | bc -l # square root with scale
echo "scale=2, $num^3" | bc -l # exponentiation with scale
