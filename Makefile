hellomake:
	APP=customizer ./spark-app.sh
	APP=directory ./spark-app.sh
	APP=sharing ./spark-app.sh
	APP=customizer-launcher ./spark-app.sh
	APP=studio ./raw-app.sh
	./webmaker.sh
	./sechelt.sh
	./irc.sh
	./foxfooding.sh
	./hexgl.sh
	rm -rf tmp
