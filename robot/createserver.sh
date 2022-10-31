#!bin/bash
AMIID="$(aws ec2 describe-images --region us-east-1 --filters "Name=name,Values=DevOps-LabImage-CentOS7" | jq '.Images[].ImageId' | sed -e 's/"//g')"

echo $AMIID
# ami-00ff427d936335825
# DevOps-LabImage-CentOS7
aws ec2 run-instances --image-id $AMIID --instance-type t2.micro | jq 