#! /bin/bash
exit

type mkdir # Type could be: builtin command, external binary, alias, function, keyword

# Ignore aliases:
command ls
# Force call of builtin
bulitin cd
enable # List enlabled bulitins
enable -n # List disabled builtins
enable -n break # Disable break builtin command

echo $? # Last command result
echo $(date)
echo `date` # Command substitution
echo "I am `whoami`"
echo $(basename $(pwd)) # Nested substitutions

# Command separators
w ; date # In sequence
( w ; date ) > lol.txt # Command grouping

sleep 10 & date # starts in bg first commnd
ls / && echo "Success" # Executes cmd2 only on successs (returned value == 0)
# cd /dirtodelete && rm * -rf 
ls / || echo "Failed" # Executes cmd2 only on failure

# Pipes
who | w

