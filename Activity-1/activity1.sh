#creating big file

./src/create_file.sh

#splitting the files

./src/splitting_files.sh

#encrypt/decrypt using the AES 128 ECB
./src/aes_ecb.sh
#encrypt/decrypt using the AES 128 CBC
./src/aes_cbc.sh
#encrypt/decrypt using the DES3 128 ECB
./src/3des_ecb.sh
#encrypt/decrypt using the DES3 128 CBC
./src/3des_cbc.sh