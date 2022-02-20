while read url; do echo -e "\n\n -----URL: " $url "------" ;  curl -s $url  |   ruby /usr/local/bin/extract.rb --url  ; done < "$1"

