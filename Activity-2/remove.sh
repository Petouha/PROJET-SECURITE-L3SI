rm *.pem
while read line; do
    username=$(echo "${line}" | tr '[:upper:]' '[:lower:]')
   sudo userdel -r $username

done < names.txt

sudo rm -r /home/PUBKEYS