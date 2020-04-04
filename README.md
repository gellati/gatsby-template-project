# Gatsby starter template

## Setup

Start the project with

    npm run start

When the project has successfully been built, open the browser in `localhost:8000` to see the page.

## Setup with Docker

Docker can be used to set up a development environment indepent of the machine used. Install docker and docker compose. The `Dockerfile` contains the setup for the docker image, and with `docker-compose.yml` a local network can be set up.

Build the docker image with

    docker-compose build

Then start the container with

    docker-compose up

Show all running containers with

    docker ps

Log into the active container with

    docker exec -it <container name> sh

Inside the container, install the required dependencies with

    npm i

Running this command in `Dockerfile` does not work (reason unknown).

Now inside the container start the Gatsby server with

    npm run start

By default Gatsby starts a server in `localhost:8000`. When fired up inside the container, `localhost` is only visible inside the docker-compose network. Therefore the Gatsby server host has to be set to `0.0.0.0` in order for the Gatsby site to be visible outside the docker-compose network. Now the website can be seen from `localhost:8000`.

Shut down the container with

    docker-compose down

## Original project setup

This project was set up with instructions in [ORIGINAL_README.md](./ORIGINAL_README.md)
