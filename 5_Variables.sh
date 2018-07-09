#! /bin/bash
person=seb # No space before and after = !
echo $person.  # Variable subsitution then word splitting using IFS
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

export MY_VAR=123 # Make it available in subshells
# Example
export TZ=America/Los_Angeles
date
unset TZ
date

readonly okay=9911 # Declare readonly variable
declare -r okay=9911 # Idem

# Positional parameters (options)
set USA Canada France
echo $1 $2 $3 ... ${10} ${11}
options="USA Canada France"
set $options # Does the same !

# Use shift when reading parameters (<<)
set One Two Three Four
shift
echo $1 # Two
shift 2
echo $1 # Four
# Of course it affects $# $* $@

# We can keep track of initial positional parameters before shifting:
oldargs=$*
set $oldargs # Restore

# Use getopts to parse options
# See getopt.sh

# Default Parameters:
MY_PARAM=${1:-default}
echo $MY_PARAM

# Arrays
FRUITS=(Mango Banana Apple)
# or
declare -a FRUITS=(Mango Apple Lemon)
echo ${FRUITS[*]}
echo ${FRUITS[2]}
FRUITS[3]=Orange
echo ${FRUITS[*]}
echo "Number of elements: ${#FRUITS[*]}"
unset FRUITS # OR unset ${FRUITS[*]}

# Some elements in the array can be empty
country[4]=Japan
country=(USA [2]=Japan [3]=Germany)

