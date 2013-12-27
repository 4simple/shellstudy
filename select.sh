#!/bin/bash
echo "select your gender:"
select val in "Male" "Female" "Other"; do
    break;
done
echo "You have selected \"$val\""
