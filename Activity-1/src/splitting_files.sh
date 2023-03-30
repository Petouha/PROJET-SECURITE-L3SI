fileSize=(1 2 5 10 25 50 100 250 300 500 750 1000)
mkdir files
for i in ${fileSize[@]}
do 

	split -b${i}M big_file
	mv xaa ${i}MBFile
	mv ${i}MBFile files/
	rm x*
done 
