#!/bin/bash

version=$1
owner=$2
token=$3
actor=$4

echo $token | docker login ghcr.io -u $actor --password-stdin
echo -e "$actor $token" >> token.txt
make -C web/ deploy TAG=$version OWNER=$owner
