#### Docker

To install docker on Linux system

``` sudo apt-get install docker.io ```

Granting permission to docker_user (Mandatory or have to use sudo) & **REBOOT**

``` sudo usermod -aG docker ${USER} ```

File path for docker files saved on local

**/var/lib/docker**

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
### ---------------------------------------------------------------------------------------
To build a image with specific purpose or task
Step 1: Create a Dockerfile (with the same file name)
Step 2: Add tasks which needs to be performed when image is used (Eg: Dockerfile in the master)

``` build --tag image_name:latest . ```

### ---------------------------------------------------------------------------------------

##### Type 1 Storage
Make a directory on local system on root

``` sudo mkdir docker_volume```

Run the docker container

``` docker run -dit --name container_name -v /volume_name_on_container:/disk1 alpine:latest ```

To enter the container

``` docker exec -it mydocker sh  ```

Enter container and navigate to disk1. Any files which we create on disk1 will be saved on docker_volume(Directory on local) & files created on the directory on local will reflect on the container

sh = alpine shell terminal | /bin/bash/ = Ubuntu
### ---------------------------------------------------------------------------------------
#### Type 2 Storage
Creating container with a new volume

 ``` docker run -dit --name container_name --volume /myapp alpine:latest ```
 
 Files can be added inside container by entering it using following command

``` docker exec -it mydocker sh  ```

Limited inspection on the container with storage details

 ``` docker inspect -f '{{json .Mounts}}' container_name ```
### ---------------------------------------------------------------------------------------
##### Type 3 Storage
Creating a Volume for type 3

``` docker volume create myvolume ```

To list all the available volumes

``` docker volume ls ```

Mapping container with the volume which was created

``` docker container run -dit --name container_name --volume myvolume:/directory_name_inside_container  alpine:latest ```

Limited inspection on the container with storage details

``` docker inspect -f '{{json .Mounts}}' container_name ```
### ---------------------------------------------------------------------------------------
