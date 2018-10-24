#!/bin/bash
echo "Please enter the name of the new machine : "
name=""
while [ -z "$name" ]
do
		read -r name
	done
docker-machine create -d virtualbox $name
eval "$(docker-machine env $name)"
