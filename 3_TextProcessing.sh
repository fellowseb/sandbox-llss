#! /bin/bash
exit

ls -l /dev | more
ls -l /proc | less

# File numbers.txt exists
head numbers.txt
head -3 numbers.txt
tail -5 numbers.txt
tail +5 numbers.txt # from line 5 til the end

# Diff between two files
diff file1.txt file2.txt

# Extract characters
cut -d: -f1,6 /etc/passwd # fields 1 and 5
cut -d: -f1-5 /etc/passwd # fields 1 to 6
cut -c1-3,8-15 ~/.Xresources # characters 1 to 3 and 8 to 15 from the file for each line
date | cut -c1-3

# Paste line by line
paste file_keys.txt file_values.txt

# Combine two files with same serial numbers and sorted
join one.txt two.txt

# Remove duplicates in a file
uniq uniq_test.txt
# Print only duplicates
uniq -d uniq_test.txt
uniq -c uniq_test.txt 

# Compare two sorted files line by line
comm one.txt two.txt

# Translate (map some chars to others) from stdin to stdou
tr '[a-z]' '[A-Z]' # lowercase to uppercase
tr -s " " # squeeze multiple spaces into one
tr -d e # Remove the letter e

# Sort
sort sample.txt
sort -u  # Duplicates are sorted
sort -r # Reverse sort
sort -n -k3 # Numerical sort of third field

# IO redirection
# File descriptor #0 : stdin
# File descriptor #1 : stdout
# File descriptor #2: stderr
wc < test_uniq.txt
echo "Hello world" > hello_world.txt
echo "Appended!" >> hello_world.txt #Adds a newline
pacman -Syu 2> errors.txt #Redirects file descriptor #2 (stderr)
find / -name "*.sh" > results.txt 2> /dev/null #Discard errors
comm log.txt log2.txt > result.txt 2>&1 #Send errors where stdout goes
# &> or >& redirects stdout and stderr
# 1>&2 merges stdout in error output
# >! deactivates noclobber option

(cat two.txt; date) > date.txt #Use () to group commands before redirection and ; to separate them

#Meta chars
# *
# ?
# [..]
touch file{a..d}
ls f*
ls file[abc]
ls file[^bc]
#Brace expansion
touch file{1,2,3}{a,b,c}
touch file{1..10}

# Logical operators
bogus || echo "An error occured. Error code: $?" # Warning, 0 return status indicates success (evaluates to TRUE)
ls -la && echo "everything is OK"

# Use `` or $() for command substitution
echo `date`
echo $(date)

# VIM search patterns
# /^word/ Beginning of line
# /word$/ Ending a line
# /\<word/ Beginning of word
# /word\>/ Ending of word
# /./ One char
# /*/ N chars
# /[a-zA-Z]/ char class

# GREP
grep -lir "expression" * # l: list files containing exp, i: case-insensitive r: recursive
grep -E -e "e{2}" sample.txt #E: use Basic Regular Expressions
grep -v -e "bla" sample.txt > (temp && mv temp sample.txt ; rm temp) # This deletes lines containing exp, v: inverts results
grep -c -e 'bla' sample.txt #Counts lines containg expression
