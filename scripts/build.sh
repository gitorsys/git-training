#!/bin/sh



SOURCES_DIR=src
SOURCE_FILE=com/dcnsgroup/gittraining/Demo.java
OUTPUT_DIR=classes

if [ "$JAVA_HOME" == "" ]
then
	# Force java home
	export JAVA_HOME="C:\Program Files\Java\jdk1.8.0_111\bin"
	export PATH=$PATH:"C:\Program Files\Java\jdk1.8.0_111\bin"
fi

if [ ! -d ${SOURCES_DIR} ]
then
	# No sources dir found.
	echo "`pwd`/${SOURCES_DIR} directory not found. Please launch the script in the project root"
fi



# Clean the directory.
rm -rf ${OUTPUT_DIR}
mkdir ${OUTPUT_DIR}

# Build.
javac ${SOURCES_DIR}/${SOURCE_FILE} -d ${OUTPUT_DIR}