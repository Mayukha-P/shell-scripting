#! bin/bash
for flowers in rose sunflower jasmine tulips lotus; do
echo flower is: ${flowers}
done

p=5 
while [ $p -gt 0 ] ; do 
    echo Run Number is $p 
    p=$p-1
done