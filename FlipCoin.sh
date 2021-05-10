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

echo "*To Store Doublet Combination In A Dictionary And To Determine Its Percentage*"


declare -A doublet
tail=0;
HH=0;
TT=0;
TH=0;
HT=0;

for((indexOne=0; indexOne<coinFlip; indexOne++))
do

		flipOne=$((RANDOM%2))
		flipTwo=$((RANDOM%2))
		if [[ $flipOne -eq $head ]] &&  [[ $flipTwo -eq $head ]]
		then
			doublet[HH]="HH"
			 ((++HH))
		elif [[ $flipOne -eq $tail ]] && [[ $flipTwo -eq $tail ]]
		then
			 doublet[TT]="TT"
			  ((++TT))
		elif [[ $flipOne -eq $tail ]]  && [[ $flipTwo -eq $head ]]
		then
			doublet[TH]="TH"
			 ((++TH))
		else
			doublet[HT]="HT"
			 ((++HT))
		fi
		echo "Doublet Combination - " ${doublet[@]}
done

percentage_of_HH=$(($HH*100/$coinFlip))
echo "Percentage Of HH - "$percentage_of_HH
percentage_of_TT=$(( $TT*100/$coinFlip ))
echo "Percentage Of TT - "$percentage_of_TT
percentage_of_TH=$(($TH*100/$coinFlip))
echo "Percentage of TH - "$percentage_of_TH
percentage_of_HT=$(($HT*100/$coinFlip))
echo "Percentage of HT - "$percentage_of_HT

