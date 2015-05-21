#!/bin/bash
APP=hexgl
rm -rf tmp/$APP
git clone git@github.com:BKcore/HexGL.git tmp/$APP
cd tmp/$APP
git remote add fxos git@github.com:fxos/HexGL.git
git push fxos :gh-pages
git checkout -b gh-pages
echo "$APP.fxosapps.org" > CNAME
git add CNAME
git commit --amend --no-edit
git push fxos gh-pages
rm -rf tmp/$APP
