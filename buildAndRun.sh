#!/bin/bash
#Stop and delete container
podman stop example_container && podman rm -f example_container
#Delete container image
podman rmi example_image
#Build Pod, 
podman build -t example_image -f ./Podmanfile 
#Stop and delete Pod
podman pod stop example_pod && podman pod rm example_pod
#Create new pod and run container
podman run -dt --pod new:example_pod -p 8080:80 --name example_container example_image