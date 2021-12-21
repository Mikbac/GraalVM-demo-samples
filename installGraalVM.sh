#!/bin/bash

GRAALVM_ADDRESS="https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/graalvm-ce-java11-linux-amd64-21.3.0.tar.gz"
GRAALVM_WORKDIR="./graalvm"
GRAALVM_TAR_FILE="graalvm.tar.gz"

echo Prepare the environment...
if [ -f $GRAALVM_WORKDIR ]; then
  rm -rf $GRAALVM_WORKDIR/*
else
  mkdir $GRAALVM_WORKDIR
fi

echo Download GraalVM...
wget $GRAALVM_ADDRESS -O $GRAALVM_WORKDIR/$GRAALVM_TAR_FILE

echo Unzip GraalVM...
tar -xzf $GRAALVM_WORKDIR/$GRAALVM_TAR_FILE -C $GRAALVM_WORKDIR

rm $GRAALVM_WORKDIR/$GRAALVM_TAR_FILE

GRAALVM_DIR=$(ls $GRAALVM_WORKDIR/)
cp -r $GRAALVM_WORKDIR/$GRAALVM_DIR/. $GRAALVM_WORKDIR/.

rm -rf $GRAALVM_WORKDIR/$GRAALVM_DIR

echo Configure the environment variables...
export JAVA_HOME=$GRAALVM_WORKDIR
export PATH=$GRAALVM_WORKDIR/bin:$PATH

echo PATH = $PATH
echo JAVA_HOME = $JAVA_HOME

echo Run demo...
javac ./java/Test.java
java -classpath ./java/ Test
