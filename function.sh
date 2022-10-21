#!bin/bash
a=abc
sample()
{
   read -p "Enter a number: " NUM
   echo -e "number is: $NUM"
   echo "calling stat"
   stat
}
echo "Calling sample"
sample
stat()
{
   
   

if  [ "$a" == "abc" ]; then 
    echo -e "\e[32m Both of the are equal \e[0m"
else 
     echo -e "\e[31m Both of the are not equal \e[0m"
fi 


}