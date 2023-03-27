touch des3-cbc.txt

rm files/*.cryp files/*.DEC

for FILE in files/*
do
	start=`date +%s.%N`
	openssl enc -des3 -in $FILE -out $FILE.cryp -k 1234
	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> des3-cbc.txt

done

echo 'ENCRYPTION DONE NOW DECRYPTION'

touch des3-cbc-DEC.txt

for FILE in files/*.cryp
do
	start=`date +%s.%N`
	openssl enc -d -des3 -in $FILE -out $FILE.DEC -k 1234

	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> des3-cbc-DEC.txt

done

