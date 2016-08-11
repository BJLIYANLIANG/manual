
#!/bin/bash
#install the npm and gitbook
[ ! -f /usr/bin/npm ] && yum install nodejs -y
[ ! -f /usr/bin/gitbook ] && npm install gitbook-cli -g
#base the README.md and SUMMARY.md to init the gitbook 
gitbook init
#install the necessary plugins defined in book.json
gitbook install
#generate the _book html folder
gitbook build
#running the http service for online reading, default port is 4000
gitbook serve
