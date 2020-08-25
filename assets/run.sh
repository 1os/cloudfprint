#!/bin/sh

cd $SNAP/
${SNAP}/usr/lib/jvm/java-8-openjdk-${SNAP_ARCH}/bin/java -Duser.language=RU -Duser.region=ru -Djava.library.path=libs/ -jar cloudfprint.jar start