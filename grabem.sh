#grabbing links, emails, and ip's

#set the file
file=$1

#grab em
cat $file|grep -iE "\w+@.+[A-Za-z]+\.(com|net|org|gov|)\:[0-9]+"|sort -u
