#!/bin/bash
# program:
#   for jdk 
#History:
#2015/11/30 daolei.su Fist release 
  
test -d ./java || mkdir -p java
if arch | grep '64'; then
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz -O jdk-1.8.0.tar.gz
else
#wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u20-b26/jdk-8u20-linux-i586.tar.gz -O jdk-1.8.0.tar.gz
echo 'hehe'
fi
tar xzf jdk-1.8.0.tar.gz -C ~/java
jdk_dir=$(find ~/java/ -maxdepth 1|grep 'jdk'|cat)
echo -e "# for jdk \nexport JAVA_HOME=${jdk_dir}" | sudo tee -a /etc/profile
echo  -e 'export JRE_HOME=${JAVA_HOME}/jre\nexport CLASSPATH=${JAVA_HOME}/lib\nexport PATH=${JAVA_HOME}/bin:$PATH' | sudo tee -a /etc/profile
source /etc/profile
