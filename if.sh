#! bin/bash
read -p "Enter a number: " NUM 
echo "Your number is: $NUM"
rem = $ ( $NUM % 10 )
echo "Remainder is: $rem"
if  [ "$rem" == "0" ]; then 
    echo -e "\e[33m Value is even \e[0m"
else 
     echo -e "\e[34m Value is odd \e[0m"
fi 
