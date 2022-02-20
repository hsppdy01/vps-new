#!/bin/bash

while read url ; do echo -e "\n\n ------------------ URL: " $url "-------------------" ; curl -X POST https://api.heroku.com/apps -H "Accept: application/vnd.heroku+json; version=3" -H "Authorization: Bearer $url"; done < "$1"

