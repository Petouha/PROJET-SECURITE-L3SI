touch aes-ecb.txt

rm files/*.cryp files/*.DEC

for FILE in files/*
do
	start=`date +%s.%N`
	openssl enc -e -aes-128-ecb -in $FILE -out $FILE.cryp -pass pass:1234
	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> aes-ecb.txt

done
 
echo 'ENCRYPTION DONE NOW DECRYPTION'

touch aes-ecb-DEC.txt

for FILE in files/*.cryp
do
	start=`date +%s.%N`
	openssl enc -d -aes-128-ecb -in $FILE -out $FILE.DEC -pass pass:1234
	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> aes-ecb-DEC.txt

done


