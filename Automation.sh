#!/bin/bash

#This bash script is used to automate the flow of creating the 
#docker-compose file  and tearing it down

#Change directory to where the compose file is located
cd ~/Docker

# Build the containers
docker-compose build

# Start the containers in detached mode
docker-compose up -d

#check the webpages of the containers
curl http://127.0.0.1:8080
curl http://127.0.0.1:9090

# Stop the containers
docker-compose stop

# Remove the containers
docker-compose down