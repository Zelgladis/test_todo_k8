#!/bin/bash
myhome=$(getent passwd "$USER" | cut -d: -f6)

kubectl create secret generic regcred \
    --from-file=.dockerconfigjson=$myhome/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson