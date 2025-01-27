#!/bin/bash

# Read the value of n from user
echo -n "Enter the number of terms: "
read n

# Initialize variables
a=0
b=1

# Print the first two terms
echo -n "$a $b "

# Generate the Fibonacci series
for (( i=2; i<$n; i++ ))
do
    c=$((a + b))
    echo -n "$c "
    a=$b
    b=$c
done

echo 
