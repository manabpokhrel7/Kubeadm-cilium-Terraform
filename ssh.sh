#!/bin/bash
cd TerraformVM
rm -rf output.txt
terraform output > output.txt
ssh -i ~/.ssh/id_rsa manabpokhrel7@$(awk -F'"' 'NR==1 { print $2 }' output.txt)
rm -rf output.txt

