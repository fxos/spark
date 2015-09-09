# Apps with a pre-built path of ./dist/app
# GAIA_APPS="customizer sharing directory customizer-launcher vaani"
 GAIA_APPS="customizer sharing directory customizer-launcher"
# Apps with a pre-built path of ./
RAW_APPS="studio mozspeechcollect"
REMOTE=mozilla-b2g

# Clone the Gaia repo and clean it up.
git clone git@github.com:$REMOTE/gaia.git tmp/gaia --depth 1
rm -rf tmp/gaia/distros/spark/apps/

# Copy the Spark apps into the Gaia repo. Exclude hidden and Git files.
for APP in $GAIA_APPS; do
  mkdir -p tmp/gaia/distros/spark/apps/$APP
  cp -r tmp/$APP/dist/app/* tmp/gaia/distros/spark/apps/$APP/
  rm tmp/gaia/distros/spark/apps/$APP/CNAME
done
for APP in $RAW_APPS; do
  mkdir -p tmp/gaia/distros/spark/apps/$APP
  cp -r tmp/$APP/* tmp/gaia/distros/spark/apps/$APP/
  rm tmp/gaia/distros/spark/apps/$APP/CNAME
done

# Commit and push changes to the Gaia repo.
(
cd tmp/gaia
git add distros/spark/apps
git commit -m 'Bump Spark apps'
git push origin master
)
