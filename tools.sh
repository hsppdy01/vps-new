cd /home/himanshu

mkdir tools
cd tools
wget https://gist.githubusercontent.com/fransr/a155e5bd7ab11c93923ec8ce788e3368/raw/fdfc8ded52a6746d8ecb0fc522cf492e42ba0dec/bucket-disclose.sh
wget https://github.com/m4ll0k/Bug-Bounty-Toolz/blob/master/getrelationship.py
wget https://raw.githubusercontent.com/gwen001/github-search/master/github-subdomains.py
wget https://raw.githubusercontent.com/venom26/recon/master/github_recon.sh



git clone https://github.com/anshumanbh/git-all-secrets.git
git clone https://github.com/defparam/smuggler.git
git clone https://github.com/s0md3v/Arjun.git
git clone https://github.com/1ndianl33t/Gf-Patterns
git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
pip3 install -r requirements.txt
cd ..
git clone https://github.com/nsonaniya2010/SubDomainizer.git
cd SubDomainizer
pip3 install -r requirements.txt
git pull
cd ..

git clone https://github.com/s0md3v/Corsy.git
cd Corsy
sudo pip3 install requests
cd ..

git clone https://github.com/iamj0ker/bypass-403
cd bypass-403
chmod +x bypass-403.sh
sudo apt install figlet
cd ..

git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
pip3 install -r requirements.txt
cd ..

sudo apt-get --assume-yes install git make gcc
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make
cd ..
git clone https://github.com/R0X4R/ssrf-tool.git
cd ssrf-tool
go build ssrftool.go && sudo mv ssrftool /usr/bin/
cd ..

git clone https://github.com/ProjectAnte/dnsgen
cd dnsgen
sudo pip3 install -r requirements.txt
sudo python3 setup.py install
cd ..



