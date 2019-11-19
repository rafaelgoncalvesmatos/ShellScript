#/bin/bash

echo -e "\n"

for y in 1 2 3 4 5 6 7 8 9 10 ; do
    echo -e "Tabuada do $y \n"
    for x in 1 2 3 4 5 6 7 8 9 10 ; do 
        multi=$(( $y*$x ));
        echo "$y x $x = $multi";
    done
    echo -e "\n"
done