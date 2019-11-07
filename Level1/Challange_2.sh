# Challenge 2: My shell don't know how to count

# What I tried to achieve?
# I have some data file containing integer numbers, one on each line, and I want to compute the
# sum of all those numbers:
# yesik:~/ItsFOSS$ cat sample.data
# 102
# 071
# 210
# 153
# yesik:~/ItsFOSS$ declare -i SUM=0
# yesik:~/ItsFOSS$ while read X ; do
# > SUM+=$X
# > done < sample.data
# yesik:~/ItsFOSS$ echo "Sum is: $SUM"
# Sum is: 522

# Unfortunately, the result I obtain is wrong (the expected result was 536).
# Could you explain why the result is wrong and fix my commands to obtain the correct result.

# https://itsfoss.com/bash-challenge-5/
declare	-i SUM=0

while read X ; do 
	if [[ ${X:0:1} == "0" ]]
	then
		X="${X:1}"
	fi

	SUM+=$X;
done < sample.data 



echo $SUM
