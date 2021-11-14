# Explore a docker image

This README is based on material here:

[https://stackoverflow.com/a/25605493/1761845](https://stackoverflow.com/a/25605493/1761845)


A docker image is actually only a regular tarball that
 contains only a few files.

Explore the image by extracting the tarball.

```bash

[jjesus@fedora explore]$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
ubuntu       latest    ba6acccedd29   4 weeks ago   72.8MB

[jjesus@fedora explore]$ docker save ba6ac | tar x

[jjesus@fedora explore]$ ls -l
800bc5af689f6e976edc015154816444229bb7b68c40503d3d5b35df09fd5f7e
ba6acccedd2923aee4c2acc6a23780b14ed4b8a5fa4e14e252a23b846df9b6c1.json
manifest.json
README.md

[jjesus@fedora explore]$ ls -l 800*
total 73404
-rw-r--r--. 1 jjesus jjesus     1137 Oct 15 19:37 json
-rw-r--r--. 1 jjesus jjesus 75155456 Oct 15 19:37 layer.tar
-rw-r--r--. 1 jjesus jjesus        3 Oct 15 19:37 VERSION
[jjesus@fedora explore]$ 


```

