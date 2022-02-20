cat fuzz.txt | grep URL | tee -a urls.txt
cat urls.txt | cut -c 23- | tee -a url.txt
cat url.txt | httpx -status-code | grep 200 | tee -a 200.txt
