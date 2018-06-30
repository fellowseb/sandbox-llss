#! /bin/bash
person=seb # No space before and after = !
echo $person.
echo "$person"
echo '$person' # prints the string

set # Prints all shell variables
# set is also used to set/unset shell options and positional arguments

# Environment vars:
env # List, same as printenv
declare -x MY_ENV_VAR=12 # Declare env var
# A few variables to know:
$$ # current shell process id
$? # most recent process exit status
$# # current shell process args count
$0 # shell argument 0
$1 # shell argument 1
$*
$@

# When user logs in ~.profile is executed
# When every single terminal is created, ~.bashrc is executed
