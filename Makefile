hellomake:
	APP=directory REMOTE=fxos ./apps/remoterepo-app.sh
#	APP=vaani REMOTE=fxos ./apps/remoterepo-app.sh
	APP=mozspeechcollection REMOTE=andrenatal ./apps/raw-app.sh
	./apps/irc.sh
	./gaia-bump.sh
	./hosted-bump.sh
	make clean

clean:
	rm -rf tmp
