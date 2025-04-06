#Set the baseImage to run the application
FROM node:latest

# Create app directory
WORKDIR /app

# Copy dependencies file
COPY package.json /app

# Install dependencies and build the app
RUN npm install

# Copy app source code
COPY . /app

# Expose the port the app runs in
EXPOSE 40

# Serve the app
CMD [ "node", "app.mjs" ]

## docker build -t first-demo-starting-app:latest .

## docker run -d -p 4044:40 --rm --name demo_node first-demo-starting-app:latest
## docker run -d -p 4044:40 --name demo_node first-demo-starting-app:latest
## docker run -p 4044:40 --name demo_node first-demo-starting-app:latest

## docker start -ai demo_node
## docker start demo_node
## docker stop demo_node

# docker build .
# docker build -t <image_name>:<tag>  . // build an image with a name and tag

# docker run -p 4044:40 <image_id> {run in attached mode} {host-port:container-port}
# docker run -d -p 4044:40 <image_id> {run in detached mode} {host-port:container-port}
# docker run -d -it -p 4044:40 <image_id> {run in detached interactive mode} {host-port:container-port}

# docker cp <source> <container_id>:<path> // copy files from host to container, e.g: docker cp dummy/. awesome_boyd:/test
# docker cp <container_id>:<path> <destination> // copy files from container to host, e.g: docker cp awesome_boyd:/test/. dummy/.

# docker run -p 4044:40 -d --rm --name <custom_name> <image_id> // run in detached mode and remove the container when stopped and give it a name with a image_id
# docker run -p 4044:40 -d --rm --name <custom_name> <image_name>:<tag> // run in detached mode and remove the container when stopped and give it a name with a image_name:tag

# docker start -p 4044:40 <container_id> {to start the container in detached mode} {host-port:container-port}
# docker start -a -p 4044:40 <container_id> {to start the container in attached mode} {host-port:container-port}
# docker start -a -it -p 4044:40 <container_id> {to start the container in attached interactive mode} {host-port:container-port} 

# docker stop <container_id> {to stop the container}
# docker stop <container_name> {to stop the container}
# docker stop $(docker ps -q) {to stop all the running containers}

# docker exec -it <container_id> sh {to get into the container}
# docker exec -it <container_id> bash {to get into the container}
# docker exec -it <container_id> /bin/sh {to get into the container}

# docker ps {to see the running containers}
# docker stop <container_id> {to stop the container}
# docker rm <container_id> {to remove the container}
# docker rmi <image_id> {to remove the image}
# docker kill <container_id> {to kill the container}

# docker logs <container_id> {to see the logs of the container}
# docker logs -f <container_id> {to see the logs of the container in real time}

# docker inspect <container_id> {to see the details of the container}
# docker inspect <image_id> {to see the details of the image}

# docker images {to see the images} 
# docker image prune {to remove the dangling images}
# docker container prune {to remove the dangling containers}
# docker system prune {to remove the dangling images and containers}
# docker system prune -a {to remove all the images and containers}

# docker volume ls {to see the volumes}
# docker volume create <volume_name> {to create a volume}
# docker volume inspect <volume_name> {to see the details of the volume}
# docker run -v <host_path>:<container_path> {to mount the volume}
# docker run -v <volume_name>:<container_path> {to mount the volume}
# docker run -v <volume_name>:<container_path> -v <volume_name>:<container_path} {to mount multiple volumes}

# docker volume rm <volume_name> {to remove the volume}
# docker volume prune -a {to remove all the volumes}
# docker volume prune {to remove the dangling volumes}
# docker volume prune -f {to remove all the volumes}
# docker volume prune -f -a {to remove all the volumes}
# docker volume prune -f -a --filter "label!=keep" {to remove all the volumes except the ones with label keep}

# docker network ls {to see the networks}
# docker network create <network_name> {to create a network}
# docker network connect <network_id> <container_id> {to connect the container to the network}
# docker network disconnect <network_id> <container_id> {to disconnect the container from the network}
# docker network rm <network_id> {to remove the network}
# docker inspect <network_id> {to see the details of the network}
# docker network prune {to remove the dangling networks}
# docker network prune -a {to remove all the networks}

# docker tag <image_id> <new_image_name>:<tag> {to tag the image clone/copy of the image}
# docker push <new_image_name>:<tag> {to push the image to the registry}