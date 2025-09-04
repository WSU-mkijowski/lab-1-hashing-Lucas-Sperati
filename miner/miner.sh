#!/bin/bash


echo "Starting this script (hopefully it is executable with chmod a+x ./miner.sh)"

VARIABLE=some_string
VARIABLE=hashed_string
VARIABLE=random_number

## Prints all words in provided dictionary
## (you might want to find a bigger dictionary)
for i in $(cat ../data/dictionary); do ##for loop that gets each item in the dictionary  
  ##printf $i 

  for j in $(seq 100 105); do ##gets numbers from 100-105
  	some_string="$j$i"
	##printf $some_string
  	hashed_string=$(printf "$some_string" | sha256sum)
  	##echo "$hashed_string"  
	
	if [[ "${hashed_string:0:3}" == 000 ]]; then
		echo $hashed_string
		echo $i
		echo $j

	fi
done
done

echo "Script Done"
