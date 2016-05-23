#!/bin/bash
gcc site.hs
./site rebuild
cd _site
git init
git add .
git commit -m $1
git remote add origin git@github.com:clareification/clareification.github.io.git
git push --force origin master

