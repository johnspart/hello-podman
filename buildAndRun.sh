#!/bin/bash

podman stop example_container && podman rm -f example_container

podman rmi example_image

podman build -t example_image -f ./Podmanfile 

podman run -itd -p 8080:80 --name example_container example_image