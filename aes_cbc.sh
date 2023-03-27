touch aes-cbc.txt

rm files/*.cryp files/*.DEC

for FILE in files/*
do
	start=`date +%s.%N`
	openssl enc -e -aes-128-cbc -in $FILE -out $FILE.cryp -pass pass:1234
	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> aes-cbc.txt

done
 
echo 'ENCRYPTION DONE NOW DECRYPTION'

touch aes-cbc-DEC.txt

for FILE in files/*.cryp
do
	start=`date +%s.%N`
	openssl enc -d -aes-128-cbc -in $FILE -out $FILE.DEC -pass pass:1234
	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> aes-cbc-DEC.txt

done

