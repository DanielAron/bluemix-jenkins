#!/bin/bash
VERSION=${VERSION:-0.1}
REGISTRY_NAME=${REGISTRY_NAME:-my-registry}
GROUP_NAME=${GROUP_NAME:-my-jenkins}
HOST_NAME=${HOST_NAME:-my-jenkins}
VOLUME_NAME=${VOLUME_NAME:-jenkins}
cf ic -v group create --name $GROUP_NAME --min 1 --max 1 --desired 1 --auto --hostname $HOST_NAME --domain  -v ${VOLUME_NAME}:/var/jenkins_home  -p 8080 -m 512 registry.ng.bluemix.net/${REGISTRY_NAME}/bluemix-jenkins:${VERSION}

