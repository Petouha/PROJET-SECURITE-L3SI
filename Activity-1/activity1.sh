#creating big file

./src/create_file.sh
echo 'file is created'
#splitting the files
echo 'now splitting the files, may take some time'
./src/splitting_files.sh
echo 'files spilitting complete'
#encrypt/decrypt using the AES 128 ECB

echo 'encrypt/decrypt using the AES 128 ECB'
./src/aes_ecb.sh

#encrypt/decrypt using the AES 128 CBC

echo 'encrypt/decrypt using the AES 128 CBC'
./src/aes_cbc.sh

#encrypt/decrypt using the DES3 128 ECB

echo  'encrypt/decrypt using the DES3 128 ECB'
./src/3des_ecb.sh

#encrypt/decrypt using the DES3 128 CBC

echo 'encrypt/decrypt using the DES3 128 CBC'
./src/3des_cbc.sh
