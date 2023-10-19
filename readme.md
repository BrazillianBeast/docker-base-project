## Development process before containers

Each developer needed to install and configure all services directly on their OS (on their local machine)
>Database, PostgreSQL15.1, Redis 7.0 > Windows(**User 1**)

>Database, PostgreSQL15.1, Redis 7.0 > MacOs(**User 2**)

- Installation process different for each OS environment

- Many steps, where something can go wrong

**With docker you have containers with its own isolated environment.**

- Images with all dependencies and config, easy to run different

- Different versions of the same app without any conflicts 

- Starting services as a docker container using 1 docker command  such as:
`"docker run postgres"`
`"docker run redis"`
`"docker run python:3.10"`


## Basic Commands

`"docker ps"`

`"docker images"`

`"docker pull (optional)"`

`"docker run -d (any_image_name)"` 

`"docker run -d -p {HOST_PORT}:{CONTAINER_PORT}"`

`"docker ps -a"`

`"docker start {container_id}"`

`"docker logs {container_id}/{container_name}"`

***`"docker run"` creates a new container every time instead of re-using an existing one***

## Building a docker image

**1** - Dockerfile (Build instruction)
**2** - Image
**3** -  Container

### Example of building an image

 `"docker build -t fastapi-app:1.0 ."`
 
`"docker images"`

`"docker run --name fastapi_basic -d -p 8000:8000 fastapi-app:1.0"`

