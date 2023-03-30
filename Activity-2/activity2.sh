
sudo mkdir /home/PUBKEYS
while read line; do
    
    username=$(echo "${line}" | tr '[:upper:]' '[:lower:]')
    sudo useradd $username -m 
    cd /home/$username
    sudo mkdir  /home/$username/keys/
    sudo chown -R $username:users /home/$username/keys
    sudo chmod 700 /home/$username/keys
    sudo openssl genrsa -out ${username}PrvKey.pem 2048
    sudo openssl rsa -in ${username}PrvKey.pem -pubout -out ${username}PubKey.pem
    sudo mv ${username}PrvKey.pem /home/$username/keys/
    sudo cp ${username}PubKey.pem /home/PUBKEYS/
    sudo mv ${username}PubKey.pem /home/$username/keys/

done < names.txt