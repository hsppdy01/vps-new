#!/bin/bash

while read url; do python3 ~/tools/secretfinder/SecretFinder.py -i $url -o cli ; done < "$1"

