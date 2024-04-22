printHello(){
	echo Hello
}

printHello

createFile(){
	touch scriptfile.sh;
	echo "echo Hello" > scriptfile.sh ;
	chmod u+x /home/thishi/scriptfile.sh;
	./scriptfile.sh;
} 

createFile

