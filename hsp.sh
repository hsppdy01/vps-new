fuzz-all.sh >> fuzz.txt

cat fuzz.txt | grep "| URL | " >> urls.txt
cat fuzz.txt | grep "| --> | " >> redirect-fuzz.txt
sed -e "s/| URL | //g" -i.backup urls.txt
sed -e "s/| --> | //g" -i.backup redirect-fuzz.txt
rm urls.txt.backup
rm redirect-fuzz.txt.backup
cat redirect-fuzz.txt urls.txt | tee -a urls-to-look.txt
rm urls.txt
rm redirect-fuzz.txt
sort -u urls-to-look.txt | tee -a urls.txt
rm urls-to-look.txt
cat urls.txt | sed 's/^.............//' >> urls-to-look.txt
rm urls.txt
mv urls-to-look.txt urls.txt

cat urls.txt | httpx -status-code >> all-status-url.txt
cat all-status-url.txt | grep "200" >> 200-status.txt
sed 's/ .*//' 200-status.txt
