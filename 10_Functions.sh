#! /bin/bash
exit #Not really intented to be executed

hello() { echo Hello $LOGNAME; }
hello # Call it

myfunc
{
	echo "Okayyy"
}

myfunc

declare -f myfunc
unset -f myfunc

# Only inherits position par $0, current proc
ex()
{
	echo $# $0 $1 $2
}
ex # 0 bash    
ex okay lol # 2 bash okay lol

# Declare variables local to function scope
myfunc()
{
	local myvar="RRER"
}

# function exit status using return
# ONLY NUMERICAL VALUES (exit status)
myfunc()
{
	#Do stuff...
	return 2
}
# If no return: exit status of last command
is_root_user()
{
	[ $(id -u) -eq 0 ] # Spaces important
}

# Running a function in the background
myfunc &

# Source and . command
source filename arg1 arg2
. filename arg1 arg2
# Use to create library of functions

