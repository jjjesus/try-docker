# Build and run C++

## Build source code

The source code for the application is in the *app* directory.

The application is built in the host machine, so, the
host machine needs to have development tools, including CMake.

To build:

```bash
cd app
rm -rf build;cd build;cmake ..;make

```

The executable is *app/build/helloworld*


## Run executable

We will run a bash shell in a docker container that has this 
directory mounted in it.  To run bash in a docker container,
use the provided dockerShell.sh script:

```bash
[jjesus@fedora ubu]$ ./dockerShell.sh 

```

From the bash shell, we can invoke the executable built
above using the command:

```bash
root@1fbbc0bdba7a:/# /src/ubu/app/build/helloworld 
Hello, World!
root@1fbbc0bdba7a:/# 

```


