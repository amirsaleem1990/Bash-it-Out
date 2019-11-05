# What I tried to achieve?
# I wanted to count the number of files in the current directory. For that, I used the ls and wc
# commands:

# mkdir -p ItsFOSS
# cd ItsFOSS
# touch file1 file2 $'file3\nok'
# clear
# ls -l
# -rw-r--r-- 1 yesik yesik 0 Nov 22 22:45 file1
# -rw-r--r-- 1 yesik yesik 0 Nov 22 22:45 file2
# -rw-r--r-- 1 yesik yesik 0 Nov 22 22:45 file3
# ok
# yesik:~/ItsFOSS$ ls | wc -l
# 4
# I was expecting a result of 3 since I visibly have three files in that directory. But for some
# unknown reason, that was not the result I've obtained. Could you explain me why? And most
# important, how to achieve my goal?

# Problem Solution:
# <wc> wo print karta h k agar <wc> k input ko print kar dya jay to utni lines me print ho
# <ls -l> sab sy pehly directory files (summaried) <total> (in KB) print karta h, or phir each file and directory ko alag line me print karta h.

# masla ye h k 1 file <file3\nok> me new line character h, jo k jab <ls -l> sy aata h to file name 2 lines me print hota h, to jab ye <wc> me input hota h to 1 lines <total> ki, 3 lines 3 files k lye, or <file3\nok> ka last element aakhri line me.


# HAL
# replace new line character in 'file3..' to nothing
mv 'file3'$'\n''ok' $(ls 'file3'$'\n''ok' | sed ':a;N;$!ba;s/\n//g')

