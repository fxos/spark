hellomake:
	APP=customizer REMOTE=fxos ./apps/remoterepo-app.sh
	APP=directory REMOTE=fxos ./apps/remoterepo-app.sh
	APP=sharing REMOTE=fxos ./apps/remoterepo-app.sh
	APP=customizer-launcher REMOTE=fxos ./apps/remoterepo-app.sh
#	APP=vaani REMOTE=fxos ./apps/remoterepo-app.sh
	APP=studio REMOTE=fxos ./apps/raw-app.sh
	APP=mozspeechcollection REMOTE=andrenatal ./apps/raw-app.sh
	./apps/webmaker.sh
	./apps/sechelt.sh
	./apps/irc.sh
	./apps/hexgl.sh
	./gaia-bump.sh
	./hosted-bump.sh
	make clean

clean:
	rm -rf tmp
