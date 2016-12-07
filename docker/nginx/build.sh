#!/bin/bash

IMAGE_NAME=phpbb_creativeprojects/nginx
CONTAINER_NAME=phpbb_creativeprojects_nginx

echo "Cleaning up..."
docker rm -v $CONTAINER_NAME
docker rmi $IMAGE_NAME

# Here is a trick to allow the user inside the docker container to have full access to the volume (read/write)
# - On Linux, we create a user and group of the same id as the one who is running the build script
#   (Remember to add your local user to the 'docker' group so you don't need sudo to build the container)
# - On Mac and Windows, we use a virtual machine inside Virtual Box. This machine is sharing volumes
#   under the name 'docker' group 'staff' with uid=1000 and gid=50
OS_TYPE=`uname -s`
if [ "$OS_TYPE" = "Linux" ]; then
    U_ID=`id -u`
    G_ID=`id -g`
    BUILD_ARGS="--build-arg USER_ID=$U_ID --build-arg GROUP_ID=$G_ID"
else
    BUILD_ARGS=""
fi
echo "Building image $IMAGE_NAME with arguments: '$BUILD_ARGS'"
docker build -t $IMAGE_NAME $BUILD_ARGS .