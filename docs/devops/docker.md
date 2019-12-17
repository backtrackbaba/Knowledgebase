# Docker

## Installation:

TODO: Add installation steps here

## Basic Commands

- `docker login` - To login to your DockerHub Account
- `docker images` - List all the local Images
- `docker logs <container_id>` - View the logs/stdout of a container
- `docker logs -f <container_id>` - Follow the logs/stdout of a container
- `docker run` – Runs new container.
- `docker start` – Starts one or more stopped containers
- `docker stop` – Stops one or more running containers
- `docker build` – Builds an image form a docker file
- `docker pull` – Pulls an image or a repository from a registry
- `docker push` – Pushes an image or a repository to a registry
- `docker export` – Exports a container’s filesystem as a tar archive
- `docker exec` – Runs a command in a run-time container
- `docker search` – Searches the docker Hub for images
- `docker attach` – Attaches to a running container
- `docker commit` – Creates a new image from a container’s changes
- `docker ps` - Lists all the containers
- `docker ps -a` - Lists all the active containers
- `docker stats` - Show stats of all running containers

**Running Container**:

Run a container and attach - `docker run -it <image_name>`

Run a container and detach - `docker run -d <image_name>`

Run a container and open a port - `docker run -it -p <host_port>:<container_port> <image_name>`

Run a container and pass environment variable - `docker run -e ENV1=value1 --env ENV2=value2 --env-file ./env.prod <image_name>`

Run a container and limit memory and cpu - #TODO: Add command here

Run a container and remove it once execution is completed - #TODO: Add command here

Run a container and mount a host volume - `docker run -it -v <host_volume_path>:<container_volume_path> <image_name>`

Run a container with a custom name - `docker run -it --name <unique_name> <image_name>`

<!-- ![Screenshot](assets/images/screenshot.png) -->

## Dockerfile

TODO: Add dockerfile terminologies here

## Docker Bash Aliases

```bash
alias dr='docker run $1'
alias di='docker images $1'
alias drm='docker rm $1'
alias drmi='docker rmi $1'
alias dl='docker ps'
alias dll='docker ps -a'
alias ds='docker stats'
alias dsi='docker stats $1'
function db() {
  docker build -t "$1" .;
}
```

TODO: Add dockerfile bash aliases here
