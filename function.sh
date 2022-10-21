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
   
    if [ $NUM -eq 0]; then
     echo -e "\e[31m number is null \e[0m"
    else
     echo -e "\e[33m number is not null \e[0m"
    fi



}
