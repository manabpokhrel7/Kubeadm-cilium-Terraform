#!/bin/bash
terraform output > output.txt
rm -rf ../inventory
echo "[control]" >> ../inventory
awk -F'"' 'NR==3 { print $4 }' output.txt >> ../inventory
awk -F'"' 'NR==6 { print $4 }' output.txt >> ../inventory
awk -F'"' 'NR==9 { print $4 }' output.txt >> ../inventory
echo "[workers]" >> ../inventory
awk -F'"' 'NR==14 { print $2 }' output.txt >> ../inventory
awk -F'"' 'NR==15 { print $2 }' output.txt >> ../inventory


