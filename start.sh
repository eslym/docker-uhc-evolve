#!/bin/sh
ls -d -1 /minecraft/world/* | grep -v datapacks | while read -r file ; do
    rm -rf $file
done
echo eula=true > eula.txt
java Prop
java -Xmx$MAX_HEAP -Xms$MIN_HEAP -Dfile.encoding=UTF-8 -jar server.jar nogui