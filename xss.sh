python3 /home/himanshu/tools/ParamSpider/paramspider.py -d $1 -o $1.txt

cat /home/himanshu/tools/ParamSpider/output/$1.txt | kxss | dalfox pipe
