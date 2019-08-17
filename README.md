# Java inside Cygwin

In case you get issues from programs, like doxygen, saying java can not run a
.jar file which is referenced by a cygwin path (e.g. /cygdrive/c/...), place
this script in /usr/local/bin/ and rename it to 'java'. Also make sure the file
has execution permission.

## Install

Alternatively issue following command from within this repository:

```
$ make install
```
