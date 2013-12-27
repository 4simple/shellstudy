#!/bin/bash
counter=0
while [ $counter -lt 5 ]; do
    ((counter++))
    echo "$counter"
done


for arg in "$@"; do
    echo "$arg"
done
