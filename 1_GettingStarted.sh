#! /bin/bash

# Current shell
echo $SHELL
bash -version
ls
pwd
#cd
#cp
#mv
#touch

# Our first script - Hello World
echo "hello World"
ls
date
# bash script.sh
# chmod +x script.sh && ./script.sh

# Man pages
man -k passwd
man -K passwd # Global search for keyword
man 5 passwd # display section 7 for man command
whatis passwd
which passwd
whereis passwd
whoami

#su #root is assumed
#exit

#alias copy cp -rf # copy recursively (folders) and force if target exists
alias #list aliases
#unalias copy

uname #system info
cat /proc/version
cat  /etc/*release
lsb_release -a

#ln -s file file_link
#file file_name

cat > my_file.txt #Enters 'interactive' mode so that user can input data, CTRL + D to save
echo "Textttt" > my_file.txt # Second way
echo "This is appended" >> my_file.txt

chmod ugo+rwx my_file
chmod 777 my_file # rwx.rwx.rwx 
umask 22 #Mask applied to new folder permissions
# Add 0001 to the mask for new files

#Sticky bit:
mkdir mydir
chmod +777 mydir
touch mydir/test.txt
chmod +t mydir
ll mydir/text.txt # 1777 permissions on the file => it inherited the sticky bit from parent folder
