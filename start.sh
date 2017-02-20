#!/bin/bash

if [ -n $1 ] ; then
  XMX='3G'
  XMS='2G'
  JAVA_ARGS="-Xmx${XMX} -Xms${XMS}"
else
  JAVA_ARGS=$1
fi;

JAR='TekkitLite.jar'

if [ ! -e /minecraft/server.properties ]; then
  unzip /data/server.zip -d /minecraft
fi
cd /minecraft && java $1 -jar $JAR nogui
