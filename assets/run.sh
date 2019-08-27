#!/bin/sh

cd $SNAP/
usr/lib/jvm/default-java/bin/java -Duser.language=RU -Duser.region=ru -Duser.dir=$SNAP/ -Djava.library.path=$SNAP/libs/ -jar $SNAP/cloudfprint.jar start