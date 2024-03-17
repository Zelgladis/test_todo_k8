#!/bin/bash

read cred

IFS=' ' read -ra CREDS <<< "$cred"

if [[ "${#CREDS[@]}" == 4 ]]; then
  kubectl create secret docker-registry regcred --docker-server=${CREDS[0]} --docker-username=${CREDS[1]} --docker-password=${CREDS[2]} --docker-email=${CREDS[3]}
else
  echo "Wrong count of splitting"
fi
