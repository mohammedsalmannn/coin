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

echo "*To Store The Triplet Combination And Its Percentage*"


declare -A triplet
tail=0;
HHH=0;
HHT=0;
HTH=0;
HTT=0;
THH=0;
TTT=0;
THT=0;
TTH=0;


for((indexTwo=0; indexTwo<coinFlip; indexTwo++))
do

                flipFirst=$((RANDOM%2))
                flipSecond=$((RANDOM%2))
		flipThird=$((RANDOM%2))
                if [[ $flipFirst -eq $head ]] &&  [[ $flipSecond -eq $head ]] && [[ $filpThird -eq $head ]]
                then
                        triplet[HHH]="HHH"
                         ((++HHH))
                elif [[ $flipFirst -eq $head ]] && [[ $flipSecond -eq $head ]] && [[ $flipThird -eq $tail ]]
                then
                         triplet[HHT]="HHT"
                          ((++HHT))
                elif [[ $flipFirst -eq $head ]]  && [[ $flipSecond -eq $tail ]] && [[ $flipThird -eq $head ]]
                then
			triplet[HTH]="HTH"
                         ((++HTH))
		elif [[ $flipFirst -eq $head ]]  && [[ $flipSecond -eq $tail ]] && [[ $flipThird -eq $tail ]]
                then
                        triplet[HTT]="HTT"
                         ((++HTT))
		elif [[ $flipFirst -eq $tail ]]  && [[ $flipSecond -eq $head ]] && [[ $flipThird -eq $head ]]
                then
                        triplet[THH]="THH"
                         ((++THH))
		elif [[ $flipFirst -eq $tail ]]  && [[ $flipSecond -eq $tail ]] && [[ $flipThird -eq $tail ]]
                then
                        triplet[TTT]="TTT"
                         ((++TTT))
		elif [[ $flipFirst -eq $tail ]]  && [[ $flipSecond -eq $head ]] && [[ $flipThird -eq $tail ]]
                then
                        triplet[THT]="THT"
                         ((++THT))
                else
                        triplet[TTH]="TTH"
                         ((++TTH))
                fi
                echo "Triplet Combination - " ${triplet[@]}
done

echo "Percentage Of Triplet Combination"

percentage_of_HH=$(($HHH*100/$coinFlip))
echo "Percentage Of HHH - "$percentage_of_HHH
percentage_of_HHT=$(( $HHT*100/$coinFlip ))
echo "Percentage Of HHT - "$percentage_of_HHT
percentage_of_HTH=$(($HTH*100/$coinFlip))
echo "Percentage of HTH - "$percentage_of_HTH
percentage_of_HT=$(($HTT*100/$coinFlip))
echo "Percentage of HTT - "$percentage_of_HTT
percentage_of_HH=$(($THH*100/$coinFlip))
echo "Percentage Of THH - "$percentage_of_THH
percentage_of_TT=$(( $TTT*100/$coinFlip ))
echo "Percentage Of TTT - "$percentage_of_TTT
percentage_of_TH=$(($THT*100/$coinFlip))
echo "Percentage of THT - "$percentage_of_THT
percentage_of_HT=$(($TTH*100/$coinFlip))
echo "Percentage of TTH - "$percentage_of_TTH
