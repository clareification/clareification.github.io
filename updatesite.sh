#!/bin/bash
./site clean
./site build
cd _site
git init
touch CNAME
echo "clarelyle.com" >> CNAME
echo "www.clarelyle.com" >> CNAME
git add .
git commit -m "$1"
git remote add origin git@github.com:clareification/clareification.github.io.git
git push --force origin master
