#### Docker

To install docker on Linux system

``` sudo apt-get install docker.io ```

Granting permission to docker_user (Mandatory or have to use sudo) & **REBOOT**

``` sudo usermod -aG docker ${USER} ```

File path for docker files saved on local

**/var/lib/docker**

Complete information regarding docker

``` docker info ```

### ---------------------------------------------------------------------------------------
To list the containers

``` docker container ls -a ```

To remove a container

``` docker container rm container_name ```

To list the docker iamges

``` docker images ```

**Note: image ID begins with sha:256**

To remove an image

``` docker image rm image_name ```
### ---------------------------------------------------------------------------------------
To run a container (checks locally for the image file, if not present pulls from docker_hub)
 
 ``` docker run --name container_name alpine:latest ```
 
 To run a container with detached to run the container in background (d), interactive terminal (it)
 when detached (d) is added to argument an operation like ping needs to be added

``` docker run -dit --name container_name alpine:latest ping -c 10 localhost ```

The above command pings local host 10 times

Full inspection of the container

 ``` docker inspect container_name ```
 
 To remove all the containers
 ``` docker container rm $(docker container ls -aq) ```
### ---------------------------------------------------------------------------------------
To build a image with specific purpose or task

Step 1: Create a Dockerfile (with the same file name)

Step 2: Add tasks which needs to be performed when image is used (Eg: Dockerfile in the master)

``` build --tag image_name:latest . ```

### ---------------------------------------------------------------------------------------
To move between the 7 stages of a container i.e)exited, Running, Paused, Restarting, OOMKilled, Dead
to be filled

### ---------------------------------------------------------------------------------------
Compose

### ---------------------------------------------------------------------------------------
### ---------------------------------------------------------------------------------------
### ---------------------------------------------------------------------------------------



