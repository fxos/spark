#!/bin/bash
rm -rf tmp/$APP
git clone git@github.com:fxos/$APP.git tmp/$APP
cd tmp/$APP
npm install
git checkout -b deploy
npm run build
rm .gitignore
echo "$APP.fxosapps.org" > dist/app/CNAME
git add dist/app
git commit -m "Deployed to GitHub Pages"
git push origin :gh-pages
git subtree push --prefix dist/app origin gh-pages
