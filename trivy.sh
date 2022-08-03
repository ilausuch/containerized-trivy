#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <container_image>"
  exit 1
fi


[ -d results ] || mkdir results
docker run -ti trivy trivy image $1 | tee results/$(echo $1|tr "/" "_").txt
