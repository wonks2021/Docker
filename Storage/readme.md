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
To create a mount storage (copying existing data to a container)

``` docker run -dit --name container_name --mount source=myvol2,target=/test nginx:latest ```

Test - Directory to be created on storage; myvol2 - Directory to be created on local

Limited inspection on the container with storage details

 ``` docker inspect -f '{{json .Mounts}}' container_name ```
