#!/bin/sh

cd $SNAP/
$SNAP/usr/lib/jvm/default-java/bin/java -Duser.language=RU -Duser.region=ru -Djava.library.path=libs/ -jar cloudfprint.jar start