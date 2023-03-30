#!/bin/bash

noms=("Farah" "Yasmine" "Sana" "mouna" "imad")

for noms in  "${noms[@]}"
do 
  username=$(echo "${noms}" | tr '[:upper:]' '[:lower:]')
  sudo useradd "${username}" -m -s /bin/bash
  echo "Le compte utilisateur '${username}' a été créé."
  sudo mkdir /home/"${username}"/key
  sudo chown "${username}" /home/"${username}"/key
  sudo chmod 700 /home/"${username}"/key
  sudo ssh-keygen -t rsa -b 2048 -f /home/"${username}"/key/id_rsa -q -N ""
  echo "La paire de clés SSH pour l utilisateur '${username}' a été générée."
  sudo cp /home/"${username}"/key/id_rsa.pub /home/"${username}"/keypub
done