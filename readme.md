Development process before containers

>Each developer needs to install and configure all services directly on their OS
on their local machine

	Database, PostgreSQL15.1, Redis 7.0 > Windows(User 1)
	Database, PostgreSQL15.1, Redis 7.0 > M<acOs(User 2)	

	-Installation process different for each OS environment
	-Many steps, where something can go wrong

>With docker you have containers with its Own isolated environment, 
 Images with all dependencies and config, easy to run different 
 versions of same app without any conflicts starting services as
 a docker container using 1 docker command > such as > docker run
 postgres, docker run redis etc...

------------------------------Basic Commands------------------------------
docker ps
docker images
docker pull(optional)
docker run -d any_image_name
docker run -d -p {HOST_PORT}:{CONTAINER_PORT}
docker ps -a
docker start {container_id}
docker logs {container_id}/{container_name}

---------------------------------------------------------------------------
docker run creates a new container every time
instead of re-using an existing one
------------------------------------------------------------------------
Building a docker image

Dockerfile(Build instruction) >  Image > Container

docker build -t fastapi-app:1.0 .
docker images

