#!/bin/bash
APP=sechelt
rm -rf tmp/$APP
git clone git@github.com:borismus/$APP.git tmp/$APP
cd tmp/$APP
git remote add fxos git@github.com:fxos/$APP.git
git push fxos :gh-pages
git checkout -b gh-pages
echo "$APP.fxosapps.org" > CNAME
wget https://raw.githubusercontent.com/fxos/sechelt/static/icon.png
mv icon.png images/
wget https://raw.githubusercontent.com/fxos/sechelt/static/manifest.webapp
git add CNAME images/icon.png manifest.webapp
git commit --amend --no-edit
git push fxos gh-pages
