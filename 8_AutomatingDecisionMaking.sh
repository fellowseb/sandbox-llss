# Checking the exit status of commands
echo $?

# Using the test command
test $name=seb
[[ $name = Ganesh ]]
[[ $name = [Gg]???? ]]
[[ $var == var_val && $varB == "John" ]]
[ $var == Ganesh ] && [ $varB == "John" ]

# test strings
test -n $string # [ -n $string ], non-null string
test -z $string # [ -z $string ], null string
test $string1 != $string2
test $string1 == $string2
test $string1 > $string2

# test integers
test $int1 -eq $int2 # (( $int1 == $int2 )), [[ $int1 == $int2 ]], [ $int1 == $int2 ]]
test $int1 -ne $int2
test $int -lt $int2

# File test options
test -c $filename # Special character file test
test -d $dir # Is a directory
test -f $filename # Is a file
test -e $filename # file or directory exists
test -G $filename # file exists and owned by my group id
test -t $fd # true if FD is open on terminal
test -r $filename # has read permissions, -w, -x
test $file1 -nt $file2 # newer than
# See help test

# Conditional constructs
if command
then
	echo "blala"
else
	echo "blabla2"
fi
# if command; then echo "blabla"; fi

#if [ numeric/string exp ]
#if [[ string exp ]]
#if (( numerical exp ))

# null command
:

# Switch case
case $var in
	value1)
		echo "value1 !"
		;;
	*@*.com) # email pattern
		echo "email !"
		;;
	*)
		echo "other"
		;;
esac

# Select
select var in apple pear banana
do
	echo "blabla"
done
# Use break to exit the loop
select var in {0..1}
do
	echo $var
	break
done
