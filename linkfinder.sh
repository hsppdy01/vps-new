#!/bin/bash

while read url ; do echo -e "\n\n ------------------ URL: " $url "-------------------" ; python3 ~/tools/LinkFinder/linkfinder.py -i $url -o cli; done < "$1"

