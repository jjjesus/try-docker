docker run \
    --name ubuntu \
    -e HOST_IP=$(ifconfig enp0s3 | awk '/ *inet /{print $2}') \
    -v /home/jjesus/git/try-docker/src:/src \
    -t -i --rm \
    ubuntu /bin/bash


