# What I tried to achieve?
# I wanted to count the number of files in the current directory. For that, I used the ls and wc
# commands:
# yesik:~/ItsFOSS$ ls -l
# total 0
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
# masla ye h k <wc -l> wo number return karta h jitni lines ka output ho, or <ls> me jo output aata h us me sab sy pehly <total> ki entry hoti h, wo files ka size and folder <empty> ka size hota h (in KB), to files ki info (each file in new line) and <total> == count(files+folders)+1 hota h, to jab 3 files hon gi to <ls -l> me 4 lines print hon gi, or jab <wc> sy in lines ko count karen gy to <4> answer aay ga.

# HAL
ls | wc
