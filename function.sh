#!bin/bash
a=abc
sample()
{
   
   echo "calling stat"
   stat
}
echo "Calling sample"
sample
stat()
{
    read -p "Enter a number: " number
   echo -e "number is: $NUM"
    



}
