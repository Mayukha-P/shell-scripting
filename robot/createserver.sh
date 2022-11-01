#!bin/bash
if [ -z "$1" ]; then 
    echo -e "\e[31m ***COMPONENT REQUIRED*** \n\e[0m \e[33m Example usage is \e[0m: \e[34m bash create-server.sh componentName\e[0m "   
    exit 1 
fi 
COMPONENT=$1
AMIID="$(aws ec2 describe-images --region us-east-1 --filters "Name=name,Values=DevOps-LabImage-CentOS7" | jq '.Images[].ImageId' | sed -e 's/"//g')"
SGID="$(aws ec2 describe-security-groups   --filters Name=group-name,Values=b51-allow-all | jq '.SecurityGroups[].GroupId' | sed -e 's/"//g')"
echo "AMI ID Used to launch instance is : $AMIID"
echo "SG ID Used to launch instance is : $SGID"
echo $COMPONENT
#creating server
createserver()
{
PRIVATE_IP=$(aws ec2 run-instances --image-id $AMIID --instance-type t2.micro --security-group-ids $SGID  --instance-market-options "MarketType=spot, SpotOptions={SpotInstanceType=persistent,InstanceInterruptionBehavior=stop}" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]"| jq '.Instances[].PrivateIpAddress' | sed -e 's/"//g')
sed -e "s/IPADDRESS/${PRIVATE_IP}/" -e "s/COMPONENT/$COMPONENT/" route53.json > /tmp/dns.json 

    echo -n "\e[35m ****Creating the DNS Record *****\e[0m"
    aws route53 change-resource-record-sets --hosted-zone-id $ZONE_ID --change-batch file:///tmp/dns.json | jq 
} 

