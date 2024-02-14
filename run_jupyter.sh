#!/bin/bash
export WORKSPACE=${1:-${WORKSPACE:-"$PWD/workspace"}}
export PORT=${3:-${PORT:-8888}}
echo "WORKSPACE=$WORKSPACE"
echo "PORT=$PORT"
uid=1000
gid=100
subuidSize=$(( $(podman info --format "{{ range .Host.IDMappings.UIDMap }}+{{.Size }}{{end }}" ) - 1 ))
subgidSize=$(( $(podman info --format "{{ range .Host.IDMappings.GIDMap }}+{{.Size }}{{end }}" ) - 1 ))
echo "subuidSize=$subuidSize"
echo "subgidSize=$subgidSize"
    
podman build -t local-scipy-notebook --format=docker -f Dockerfile
podman run --gpus all -it --rm -p ${PORT}:8888 \
    --user $uid:$gid \
    --uidmap $uid:0:1 --uidmap 0:1:$uid --uidmap $(($uid+1)):$(($uid+1)):$(($subuidSize-$uid)) \
    --gidmap $gid:0:1 --gidmap 0:1:$gid --gidmap $(($gid+1)):$(($gid+1)):$(($subgidSize-$gid)) \
    -v $XAUTHORITY:$XAUTHORITY:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v ${WORKSPACE}:/home/jovyan/work \
    -e "DISPLAY" \
    local-scipy-notebook start-notebook.py --ServerApp.root_dir=/home/jovyan/work

