#!/bin/bash
output()
{
    echo "$1"
}

help()
{
    cat << HELP

    There is help document.

HELP
    exit 0
}

if [ $1 = "-h" ]; then
    help
else
    for val in "$@"; do
        output "$val"
    done
fi
