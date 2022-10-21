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
   
    if [$number == 0];then
    echo -e "number is null"
    else
    echo -e "number is not null"
    fi
}