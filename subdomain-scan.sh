cd /home/himanshu/target
mkdir $1
cd $1
echo "Internal Scanning tool by Himanshu Pandey"
echo "Running subdomain enumeration using mutliple tools please hold on"

echo "Assetfinder Host"
assetfinder --subs-only $1 | tee -a ass.txt

echo "crt.sh subdomains"
curl -s https://crt.sh/?Identity=%.$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sort -u | awk 'NF' >> crtsh.txt
cat crtsh.txt | grep "$1" >> crt-subdomain.txt

echo "Subfinder Host"
subfinder -d $1 | tee -a sub.txt

echo "Github Host"
python3 /home/himanshu/tools/github-subdomains.py -t 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 -d $1 | tee -a github-domain.txt

awk '/>>>/{getline;next} 1' github-domain.txt >> github.txt

echo "------------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------------------------"


echo "Combining Files And Sorting"

cat crt-subdomain.txt github.txt ass.txt sub.txt | tee -a $1-final.txt

rm ass.txt 
rm crtsh.txt
rm sub.txt
rm github.txt
rm github-domain.txt
rm crt-subdomain.txt


sort -u $1-final.txt | tee -a $1.txt
rm $1-final.txt
sed 's/*.//' $1.txt >> $1-subdomain.txt
rm $1.txt
sort -u $1-subdomain.txt | tee -a $1.txt
rm $1-subdomain.txt
echo "Final Subdomain Is $1.txt"

echo "------------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------------------------"



echo "Finding Live Subdomains"

cat $1.txt | httpx >> HTTPX.txt
