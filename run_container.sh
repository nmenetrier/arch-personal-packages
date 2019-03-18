#!/usr/bin/env bash

sudo docker-compose up -d

echo "Container should be started with this name: arch-personal-packages_packaging_1"
echo "Now execute this command: sudo docker exec -it arch-personal-packages_packaging_1 bash"
