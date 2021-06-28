### ---------------------------------------------------------------------------------------
List the number of docker networks

``` docker network ls ```

Create a container with specific network

``` docker container run --network network_name -dti --name container_name alpine sh ```

Inspect a docker network

``` docker network inspect network_name ```
### ---------------------------------------------------------------------------------------
**CNM: Container Network Model** (similar abbreviation CNI: Container Network Interface)

To get ip address of a container

``` docker container inspect container_name --format "{{ .NetworkSettings.Networks.bridge.IPAddress }}" ```

To inspect a network which gives complete information of container connected to a specific network

```  docker network inspect network_name ```

Note: All containers without any specification fall under bridge network

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
Example diagram for company network with two containers as public
![image](https://user-images.githubusercontent.com/80840002/123650844-98ef5a00-d848-11eb-8645-6184c1bfefe0.png)

Connecting containers with different multi network access

1. Create two networks

``` docker network create netwwork_1 ```

``` docker network create netwwork_2 ```

2. Run a container with netwwork_1 with sleep action

``` docker container run -d --name container_name1 --network netwwork_1 alpine sleep 3000 ```

3. Connect the container with netwwork_2

``` docker network connect netwwork_2 container_name ```

4. Create container 2 and 3 with two different network to eshablish gateway connection

``` docker container run -d --name container_name2 --network network2 --cap-add NET_ADMIN alpine sleep 3000 ```

``` docker container run -d --name container_name3 --network network1 --cap-add NET_ADMIN alpine sleep 3000 ```

6. To find the ip address & route of a container

``` docker exec container_name ip add ```

``` docker exec container_name ip route ```

7. Connecting two containers through gatway connection

``` docker exec container_name3 route add -net 172.18.0.0 netmask 255.255.255.0 gw 172.19.0.2 ```

Note: 

172.18.0.0: Container_name2 ip address -1

172.19.0.2: Container_name3 (GW = SRC - 1)


