#! bin/bash
read -p "Enter a number" NUM 
Your number is:$NUM

if  [ "$NUM" == "0" ]; then 
    echo -e "\e[32m Value is null \e[0m"
else 
     echo -e "\e[31m Value is valid \e[0m"
fi 
