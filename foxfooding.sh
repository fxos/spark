#!/bin/bash
APP=foxfooding
rm -rf tmp/$APP
git clone git@github.com:fxos/$APP.git tmp/$APP
cd tmp/$APP
jekyll build
git checkout -b deploy
rm .gitignore
echo "$APP.fxosapps.org" > _site/CNAME
git add _site
git commit -m "Deployed to GitHub Pages"
git push origin :gh-pages
git subtree push --prefix _site origin gh-pages
rm -rf tmp/$APP
