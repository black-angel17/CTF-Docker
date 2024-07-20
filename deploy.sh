#!/bin/bash

# Get input from the user
read -p "Enter container name: " container_name
read -p "Enter host port 1: " host_port1
read -p "Enter host port 2: " host_port2



docker run --hostname lfi --name "$container_name" -p "$host_port1:80" -p "$host_port2:22" -d --rm lfi

# Build Docker image
docker build -t lfi .

# Run Docker container
docker run --hostname lfi --name my_container -p 8080:80 -p 2222:22 -d lfi


# docker run --hostname lfi --name "$container_name" -p "$host_port1:80" -p "$host_port2:22"  -d --rm lfi
# docker run --hostname lfi --name test -p "$host_port1:80" -p "$host_port2:22" -d --rm lfi

container_ip=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container_name)

echo "A port has been opened in $container_ip:80"