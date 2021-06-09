#### Docker
##### Type 1 Storage
Make a directory on local system

``` sudo mkdir docker_volume```

Run the docker container

``` docker run -dit --name container_name -v /volume_name_on_container:/disk1 alpine:latest ```

Enter container and navigate to disk1. Any files which we create on disk1 will be saved on docker_volume(Directory on local) & files created on the directory on local will reflect on the ccontainer

``` docker exec -it mydocker sh  ```

sh = alpine shell terminal | /bin/bash/ = Ubuntu
### ---------------------------------------------------------------------------------------
#### Type 2 Storage
Creating container with a new volume

 ``` docker run -dit --name container_name --volume /myapp alpine:latest ```

Full inspection of the container

 ``` docker inspect 5c1df0 ```

Limited inspection on the container with storage details

 ``` docker inspect -f '{{json .Mounts}}' 5c1df0 ```
### ---------------------------------------------------------------------------------------
##### Type 3 Storage
Creating a Volume for type 3
``` docker volume create myvolume ```

To list all the available volumes

``` docker volume ls ```
Creating container with the volume which was created

``` docker container run -dit --name mycentos --volume myvolume:/test  alpine:latest ```


``` docker inspect -f '{{json .Mounts}}' 28e1b5 ```
### ---------------------------------------------------------------------------------------
