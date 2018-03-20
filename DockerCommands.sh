# Docker Commands

# Install Docker on ubuntu
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
docker version

# Check version
docker version

# Search for a docker image on docker hub the global public repository
docker search hello-world

# Get a docker image in your local from docker hub
docker pull hello-world

# Check for existing images
docker images

# Create a docker image
docker build -t cda-web-app-react:v17 .

# Run a docker image (run command implicitly does docker pull if image does not exist)
docker run hello-world

# To access this docker image we should run it with some flags
# 1. -p : it maps the container port to the machine port for exposing this to outside world <external port>:<internal port>
# 2. --name : to give this a name
# 3. -d : run in a detached mode
docker run -p 80:80 --name web -d httpd

# See all the running containers
docker ps

# See all the containers running/terminated
docker ps -a

# Stop the running containers using its name
docker stop web

# Start the stopped containers using its name
docker start web

# Remove the container using its name
docker rm web

# Creating a data for persistence of data even after the container is killed
docker volume create data

# See all the existing volumes
docker volume ls

# Set data when running an image
docker run -p 80:80 --name web -d -v data:/data httpd

# Open the container shell in interactive mode
docker exec -it <container id> /bin/bash

# Remove a docker image
docker rmi web

# Pushing an image to containers.cisco.com
docker login -u="<username>" -p="<password>" containers.cisco.com
docker run -p <external port>:<internal port> -d <image name>
docker commit <containerID> containers.cisco.com/plashkar/<repository name>
docker push containers.cisco.com/plashkar/<repository name>

# Run Kubernetes
kubectl run hello-event-proxy-api --image containers.cisco.com/plashkar/event-proxy-api-dockerize:latest --port 1201

# Steps for creating docker image running container and the pushing it to containers.cisco.commit
docker build -t cda-web-app-angular:v1 .
docker images
docker run -p 1127:1127 --name cda-web-app-angular-v1 -d <image id>
docker ps
