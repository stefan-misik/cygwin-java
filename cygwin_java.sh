#!/usr/bin/env bash

# In case you get issues from programs, like doxygen, saying java can not run a
# .jar file which is referenced by a cygwin path (e.g. /cygdrive/c/...), place
# this script in /usr/local/bin/ and rename it to 'java'. Also make sure the
# file has execution permission.

JAVA="$(echo "$PATH" | sed 's/:/\n/g' | grep Java)/java.exe"

if [[ "$1" == "-jar" ]]
then
    "$JAVA" -jar $(cygpath -w "$2")
else
    shift
    "$JAVA" $@
fi

