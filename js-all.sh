echo "Gathering all js files"

cat $1.txt | gau | subjs | grep '.js$' >> js1.txt
cat $1.txt | waybackurls | grep '.js$' >> js2.txt
cat js1.txt js2.txt | tee -a js.txt
sort -u js.txt | tee -a js-all.txt
rm js.txt
rm js1.txt
rm js2.txt
mv js-all.txt all_js.txt
echo "all js files : all_js.txt"

echo "finding 200 response js"

cat all_js.txt | httpx -status-code | grep "200" >> 200js.txt
