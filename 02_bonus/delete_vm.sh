#!/bin/bash

echo "Enter the name of the machine to be deleted"
name=""
while [ -z "$name" ]
do
	read -r name
done
docker rm -f $name
