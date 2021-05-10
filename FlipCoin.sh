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
