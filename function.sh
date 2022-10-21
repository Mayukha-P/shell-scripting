#!bin/bash

sample()
{
   read -p "Enter a number: " number
   echo "calling stat"
   stat
}
sample
stat()
{
   
    if ["$number" == "0"]; then
    echo -e "\e[31m number is null \e[0m"
    else
    echo -e "\e[33m number is not null \e[0m"
    fi


}