#!/bin/bash

lowercase(){
    echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

OS=`lowercase \`uname\``
if [ "$OS" == "darwin" ]; then
	sudo mkdir $JAVA_HOME/Classes
	sudo ln -s $JAVA_HOME/lib/tools.jar $JAVA_HOME/Classes/classes.jar

	set Platform=x64
	sudo port install ocaml
	sudo gem install cocoapods
	#install lastest libtools 
fi
