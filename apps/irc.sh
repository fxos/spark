#!/bin/bash
APP=fxos-irc
rm -rf tmp/$APP
git clone git@github.com:nickdesaulniers/$APP.git tmp/$APP
cd tmp/$APP
git remote add fxos git@github.com:fxos/operatorvariant.git
git push fxos :gh-pages
git checkout -b gh-pages
echo "operatorvariant.fxosapps.org" > CNAME
git add CNAME
git commit --amend --no-edit
git push fxos gh-pages
