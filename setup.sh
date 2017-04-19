#!/bin/bash

# Directories
mkdir data

# Create docker machine
docker-machine create --driver virtualbox default

# Pull images
for image in telegraf influxdb chronograf kapacitor grafana/grafana postgres
do
  docker pull $image
done
