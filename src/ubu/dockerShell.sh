# Runs bash inside a base ubuntu container

# Get the host ip address, something like 10.0.2.15
#
HOST_IP_ADDR=$(ifconfig enp0s3 | awk '/ *inet /{print $2}')

# The current directory will be mounted inside the container
# Actually, we mount the parent directory so that we have
# access to more content
#
HOST_BASE_DIR=$(pwd)/../

docker run \
    --name ubuntu \
    -e HOST_IP=${HOST_IP_ADDR} \
    -v ${HOST_BASE_DIR}:/src \
    -t -i --rm \
    ubuntu /bin/bash

