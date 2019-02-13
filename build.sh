#!/bin/bash

name=davhunt/cmp-bidsapp
tag=latest

docker build -t $name . && docker tag $name $name:$tag && docker push $name:$tag
