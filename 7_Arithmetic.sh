#! /bin/bash

#
# Performing Arithmetic Operations in Shell Scripts
#

# Using a declare command for arithmetic
declare -i my_int_var
my_int_var="test"
echo $my_int_var # 0
my_int_var=4+5 #9
my_int_var="5 * 20" #100
value=6
let value=value+1 # Evaluate arithmetic expression
# Use external binary expr
expr 40 / 20 # to stdout
z=`expr 40 / 3`

# Using an arithmetic expansion
a=10
b=20
c=$((a + b))
echo $c
expo=$[ $a ** $b ]
(( cube = a * a * a ))

# Binary, octal, and hex arithmetic operations
declare -i x
x=2#10101
x=8#25
x=16#FF

# Floating-point arithmetic with bc
echo "scale=2; 15 / 2" | b
bc # interactive mode
# Using awk
result=`awk -v a=3.1 -v b=5.2 'BEGIN{printf "%.2fn",a*b}'`

