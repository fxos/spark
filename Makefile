hellomake:
	APP=customizer ./apps/spark-app.sh
	APP=directory ./apps/spark-app.sh
	APP=sharing ./apps/spark-app.sh
	APP=customizer-launcher ./apps/spark-app.sh
	APP=studio REMOTE=fxos ./apps/raw-app.sh
	APP=mozspeechcollect REMOTE=andrenatal ./apps/raw-app.sh
	./apps/webmaker.sh
	./apps/sechelt.sh
	./apps/irc.sh
	./apps/hexgl.sh
	./gaia-bump.sh
	make clean

clean:
	rm -rf tmp
