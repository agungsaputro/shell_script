#!/bin/bash

urltext=$1

while read -r p; do
    data=$(curl -s $p)
    name=${p##*/}
    echo $data > "${name}.json"
    echo "${data}"
done < $urltext