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
**CNM: Container Network Model** (similar abbreviation CNI: Container Network Interface)

To get ip address of a container

``` docker container inspect container_name --format "{{ .NetworkSettings.Networks.bridge.IPAddress }}" ```

To inspect a network which gives complete information of container connected to a specific network

```  docker network inspect network_name ```

Note: All containers without any specification fall under bridge network

List the number of docker networks

``` docker network ls ```

Create a container with specific network

``` docker container run --network network_name -dti --name container_name alpine sh ```

Create a container without any network

``` docker run -ti --network none alpine ```

Create a container connected only to host

``` docker run -ti --network host alpine ```

To display the complete network details of a container

``` docker container inspect container_name --format "{{ json .NetworkSettings.Networks }}" ```

Creating a subnet/internal network

``` docker network create --driver bridge --internal --subnet 192.168.30.0/24 --label network_name network_name ```

Example of creating two containers with same network

``` docker container run --network internal-only -dti --name container_name1 alpine sh ```
``` docker container run --network internal-only -dti --name container_name2 alpine sh ```
### ---------------------------------------------------------------------------------------

Connecting containers with different multi network access
1. Create two networks

``` docker network create netwwork_1 ```

``` docker network create netwwork_2 ```

2. Run a container with netwwork_1 with sleep action

``` docker container run -d --name container_name --network netwwork_1 alpine sleep 3000 ```

3. Connect the container with netwwork_2

``` docker network connect netwwork_2 container_name ```

4. To list the connected networks

``` docker exec container_name ip add ```
### ---------------------------------------------------------------------------------------
Compose

### ---------------------------------------------------------------------------------------
### ---------------------------------------------------------------------------------------
### ---------------------------------------------------------------------------------------



