#execute the script using bash shell
#!/bin/bash

#location of txt file of usernames
userfile=/opt/useradd

#extracting usernames from  the file one-by-one
username=$(cat /opt/useradd | tr 'A-Z' 'a-z')

#defining the default password
password=$username@123

#running loop to add users
for user in $username
do
#adding users '$user' is a variable that changes usernames
#accordingly in txt file.
useradd -m $user
echo $password | passwd --stdin $user

done

#echo is used to display the total numbers of 
#users created, counting the names in the txt 
#file, tail to display the final details of 
#the process on both lines(optional)
echo "$(wc -l /opt/useradd) users have been created" 
tail -n$(wc -l /opt/useradd) /etc/passwd
