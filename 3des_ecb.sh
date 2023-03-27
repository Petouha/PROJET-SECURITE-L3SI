touch des3-ecb.txt

rm files/*.cryp files/*.DEC

for FILE in files/*
do
	start=`date +%s.%N`
	openssl enc -des3 -in $FILE -out $FILE.cryp -nopad -k 1234
	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> des3-ecb.txt

done

echo 'ENCRYPTION DONE NOW DECRYPTION'

touch des3-ecb-DEC.txt

for FILE in files/*.cryp
do
	start=`date +%s.%N`
	openssl enc -d -des3 -in $FILE -out $FILE.DEC -nopad -k 1234

	end=`date +%s.%N`

	elapsed=$(echo "$end - $start" | bc -l)
	echo "$elapsed - $FILE" >> des3-ecb-DEC.txt

done

