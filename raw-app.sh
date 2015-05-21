#!/bin/bash
rm -rf tmp/$APP
git clone git@github.com:fxos/$APP.git tmp/$APP
cd tmp/$APP
git push origin :gh-pages
git checkout -b gh-pages
echo "$APP.fxosapps.org" > CNAME
git add CNAME
git commit --amend --no-edit
git push origin gh-pages
rm -rf tmp/$APP
