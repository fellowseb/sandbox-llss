#! /bin/bash
exit

# Looping with the for command

for var in apple pear banana
do
	echo $var
done

# C style
for ((i=1; i<10;i++))
do
	echo $i
done

for ((;;))
do
	echo "forever"
done

for var in user{1..10}
do
	useradd -m $var
	passwd -d $var
done


for word in `cat /home/seb/myfile.csv`
do
	echo $word
done

for file in $(ls ~/dir)
do
	echo $file
done

#continue [n]
# resume nth enclosing loop

#break

# While and until loops

while IFS= read -r line
do
	echo $line
done < "myfile.log"

until who | grep "$1"  > /dev/null
do
	sleep 60
done
echo -e \æ
echo "$i just logged in"

# Piping output of a loop
for i in 13 4 2 23 1; do echo $i; done | sort -n

#Run loop in background
while true
do
	echo "In bg"
done &

#Use IFS to parse CSV
input="bla;blue;bli;bl"
oldIFS="$IFS" # Double quote important to disable word-splitting
IFS=";"
for i in input; do echo $i; done
