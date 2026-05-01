#!/bin/bash

count=$(wc -l output.txt)
echo $count
rm -rf ../inventory
echo "[control]" >> ../inventory
awk -F'"' 'NR==1 { print $2 }' output.txt >> ../inventory

echo "[workers]" >> ../inventory
awk -F'"' 'NR==3 { print $2 }' output.txt >> ../inventory
awk -F'"' 'NR==4 { print $2 }' output.txt >> ../inventory

