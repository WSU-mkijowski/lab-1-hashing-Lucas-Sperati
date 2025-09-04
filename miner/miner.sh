#!/bin/bash


echo "Starting this script (hopefully it is executable with chmod a+x ./miner.sh)"

VARIABLE=some_string
VARIABLE=hashed_string
VARIABLE=random_number

echo $VARIABLE

## Prints all words in provided dictionary
## (you might want to find a bigger dictionary)
for i in $(cat ../data/dictionary); do
  printf $i 
  printf "\n"

  for j in $(seq 100 105); do
  	some_string="$j $i"
	printf $some_string
  	hashed_string=$(printf "$some_string" | sha256sum)
  	echo "$hashed_string"  

done
done


## prints all numbers between 100 and 105
for i in $(seq 100 105); do
  printf $i
done

echo "Script Done"
