#!/bin/bash
APP=webmaker-app-cordova
rm -rf tmp/$APP
git clone git@github.com:mozilla/$APP.git tmp/$APP
cd tmp/$APP
git remote add fxos git@github.com:fxos/webmaker.git
npm install
npm start
npm run firefoxos
git checkout -b deploy
rm .gitignore
echo "webmaker.fxosapps.org" > platforms/firefoxos/www/CNAME
git add platforms/firefoxos/www
git commit -m "Deployed to GitHub Pages"
git push fxos :gh-pages
git subtree push --prefix platforms/firefoxos/www fxos gh-pages
rm -rf tmp/$APP
