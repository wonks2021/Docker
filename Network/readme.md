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
