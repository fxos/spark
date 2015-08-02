hellomake:
	APP=customizer REMOTE=fxos ./apps/remoterepo-app.sh
	APP=directory REMOTE=fxos ./apps/remoterepo-app.sh
	APP=sharing REMOTE=fxos ./apps/remoterepo-app.sh
	APP=customizer-launcher REMOTE=fxos ./apps/remoterepo-app.sh
	APP=studio ./apps/raw-app.sh
	APP=vaani REMOTE=mozilla ./apps/remoterepo-app.sh
	./apps/webmaker.sh
	./apps/sechelt.sh
	./apps/irc.sh
	./apps/hexgl.sh
	./gaia-bump.sh
	make clean

clean:
	rm -rf tmp
