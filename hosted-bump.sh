#!/bin/sh
HOSTED_APPS="bugzillalite facebook twitter"
#REMOTE=mozilla-b2g
REMOTE=DouglasSherk

python preload.py

#git clone git@github.com:$REMOTE/gaia.git tmp/gaia --depth 1

rm -rf tmp/gaia/hosted_apps

for APP in $HOSTED_APPS; do
  (cd $APP && unzip application.zip && rm application.zip && cp update.webapp manifest.webapp)
  mkdir -p tmp/gaia/hosted_apps/$APP
  cp -r $APP/* tmp/gaia/hosted_apps/$APP/
  rm -rf $APP
done

# Commit and push changes to the Gaia repo.
(
cd tmp/gaia
git add hosted_apps
git commit -m 'Bump hosted apps'
git push origin master
)

#rm -rf tmp
