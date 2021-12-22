# GraalVM

## Table of contents
* [Samples](#samples)
* [Installation](#installation)

## Samples
* Java
* Javascript
* Python

## Installation

Use ```installGraalVM.sh``` or follow the steps below:

Source -> ```https://www.graalvm.org/java/quickstart/```.

1. Download from ```https://www.graalvm.org/downloads/```.
2. Unzip the archive.
```shell
# Linux
tar -xzf <graalvm-archive>.tar.gz 

# Windows
unzip <graalvm-archive>.zip
```
3. Configure the environment variables.
```shell
#Linux
export JAVA_HOME=<graalvm>
#macOS
export JAVA_HOME=/Library/Java/JavaVirtualMachines/<graalvm>/Contents/Home
#Windows
setx /M JAVA_HOME "C:\Progra~1\Java\<graalvm>"
```
and
```shell
#Linux
export PATH=<graalvm>/bin:$PATH
#macOS
export PATH=/Library/Java/JavaVirtualMachines/<graalvm>/Contents/Home/bin:$PATH
#Windows
setx /M PATH "C:\Progra~1\Java\<graalvm>\bin;%PATH%"
```
