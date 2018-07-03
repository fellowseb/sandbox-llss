#! /bin/bash
exit # Not supposed to be executed

# User input
read variable #shell builtin
echo $variable
# With prompt
read -p "Enter value: " variable
# Default variable $REPLY
read
echo $REPLY
# Multiple vars
read a b c
echo $a $b $c
# Read in array
read -a cities
echo ${cities}

# HERE document, multiple lines => file descriptor
cat << HERE
Wow okay
lots of lines
HERE

# Use ed has a basic editor
ed some_file.txt << quit
.s/Rose/Lily/g
w
q
quit
cat some_file.txt

# Send message to all logged-in users
wall << End
Hi guys!
Have a good day
End

# FTP session
ftp << End_Session
open ftp://myserver
cd my_dir
get my_file
quit
End_Session

# Deactivate var substitution
cat << 'EOF'
$my_var
EOF

# The here string, string => file desc
wc -c <<< "Hellooooo"

# exec, builtin command
exec othercommand # Current shell becomes othercommand's shell
# CHange redirections on current shell
exec 3> output_file.txt
echo "Teeestttt" >&3 # Send to fd #3
exec 3<&- # Close fd
# Same with input file
exec 3< intput_file.txt
cat <&3
exec 3<&-
# Both
exec 3<> file.txt
# Use read on a fd
exec 3< input_file.log
read -u 3 linevar #Same as read <& 3 linevar
exec 3<&- #Close
# See file descriptors opened by current process
ls -l /proc/$$/fd

# bash options for debugging
bash -n myscript.sh #noexec
bash -v myscript.sh #verbose
bash -x myscript.sh #trace
# Add to shebang: #! /bin/bash	-n
# Disable options with +: bash +xv my_script.sh
# Use set to change the options in a given section of a script
set -x
blablabla
set +x

