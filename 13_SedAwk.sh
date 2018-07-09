#
# sed
#

# Works line by line, storing each line in pattern space
# By default, outputs pattern space

sed -n # No auto printing of pattern space
sed -n '/pat{,2}er.?/p' filename # Print action
sed -n 's/Mango/Apple&/p' filename # Substitute action: use & and \1, \2...
sed '/deleteme/d' filename # Delete action
sed '/patt/=' filename # Print line number before mathcing pattern space

# Adressing
sed '1,3d' filename # Use line numbers
sed '/patt1/,/patt2/d' filename # Use patterns
sed '2,/patt/d' filename # Mix
sed '2,+5d' filename # Relative adressing, line 2 to 2+5
sed '2~3d' filename # Step: 2, 5, 8 ...

# Adressing w/ command
sed '/beginpat/,/endpat/s/patt/subpatt/p' filename

# Invert command action
sed '1,3!d' filename

# Multiple edits
sed -e '...' -e '...' filename

# Read files
sed '/apple/r inserted.txt' filename

# Write files, extract patterns to other file
sed '/apple/w new.txt' filename

# Insert, append, changing
sed '/apple/a
Cool text' filename
sed '/apple/i
Cool text' filename
sed '/apple/c
Cool text' filename

# Transform
sed 'y/abcdef/ABCDEF/' filename

# Hold and get
sed -e '/HoldsThisLine/h' -e '$g' filename #Copy the line at the end
sed -e '/Apple/h' -e '/Banana/x' filename # exchange 2 lines

# Use a file to describe a list of sed commands to apply
tee sedscript.txt << EOF
1i
Ceci sera inséré
s/Apple/Banana/
# Etc
EOF
sed -f sedscript.txt filename

#
# awk
#
awk '/Martin/' people.txt # Pattern
awk '{print $1}' people.txt # Action
awk '/Martin/{print $&}' people.txt # Pattern + action
cat people.txt | awk '$3 > 6500 {print $1, $3}' # Condition + action + piped input

# $0: entire record (line)
# $1, $2...: fields
# IFS: field delimiter when parsing input
# OFS: field delimiter when printing output
# RS: Record separator
# ORS: Output record separator
# NR: Record number
# NF: Field number

# Use a file of awk commands
awk -f commandlist.txt people.txt

# Print record number
awk '/pattern/{print NR}' people.txt

# Change IFS
awk -F: '/Martin/{print}' people.txt # IFS is :
awk -F[ :t] '/Martin/{print}' people.txt # IFS is [space], : and tab

# Multiple actions, ifs, loops, variables
awk '{
if ($3 > 6500) { print "More than 6500", $1;
}
else { print "Nope" }
}' people.txt

awk '{ for(i=1; i<=NF; ++i) print i, $i }' people.txt

