#!/bin/bash 

echo "Welcome To Flip Coin Combination"

echo "Flip A Coin To Display Heads Or Tails"

outCome=$((RANDOM%2))
if [[ $outCome -eq 1 ]]
then
        echo "Head"
else
        echo "Tail"
fi

echo "To Store Singlet Combination In A Dcitionary And To Determine Its Percentage"


head=1

declare -A siglet
headCount=0
tailCount=0

read -p "Enter The Number Of Coin Flip - " coinFlip
for((index=1; index<=coinFlip; index++))
do
	flips=$((RANDOM%2))
	
	if [[ $flips -eq $head ]]
	then
		singlet[Head]=$((++headCount))
	else
		siglet[Tail]=$((++tailCount))
	fi
done

percentage_of_head=$(($headCount*100/$coinFlip))
echo "Percentage Of Head - "$percentage_of_head
percentage_of_tail=$(( $tailCount*100/$coinFlip ))
echo "Percentage Of Tail - "$percentage_of_tail
