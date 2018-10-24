#!/bin/bash

echo "Enter a name for your new vm"
name=""
while [ -z "$name" ]
do
   	read -r name
done
docker-machine ip $name
