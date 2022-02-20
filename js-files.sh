cat js.txt | while read url;do wget -E -H -k -K -p -e robots=off -P /home/himanshu/target/$1/ "$url" -v;done
