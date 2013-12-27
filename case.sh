#!/bin/bash
ftype="$(file "$1")"
case "$ftype" in
    "$1: Bourne-Again shell script text executable"*)
        echo "it's a Shell script";;
    "$1: PDF document"*)
        echo "it's a PDF document";;
    "$1: PNG image data"*)
        echo "it's a PNG file";;
    *) echo "can not recognize the file type";;
esac
