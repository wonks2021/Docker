##### Compose
Docker compose is used to run multiple containers with specfic purpose  using yaml

Eg: https://github.com/docker/awesome-compose/tree/master/prometheus-grafana

The above link consists of a model docker-compose

File name should be saved as docker-compose.yml to intitate the compose container
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
To install docker-compose

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04

To list the docker-compose containers

``` docker ps ```

To build the images present on yaml file (Note: if more than one yaml files is in the directory then mention file name)

``` docker-compose build ```

``` docker-compose file.yaml build ```
To intiate a compose container (Note: without detached, the container will run on terminal)

``` docker-compose up -d```

``` docker-compose -p network_name -f file.yaml up -d```

To shutdown a docker-compose temporarily

``` docker-compose down ```

``` docker-compose -p network_name -f file.yaml down ```

To get the logs of the compose

``` docker-compose logs ```

To inspect a compose containeer

``` docker-compose inspect container_name ```

To enter the container

``` docker exec -it container_name sh ```

To restart the compose container

``` docker-compose restart container_name ```
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
To scale up the compose container (increase the number of same container by creating duplicates)

While scaling container name should not be mentioned on the yaml file

Run with -d for detached mode

``` docker-compose up --scale container_name=5 ```

To scale down the compose container, just reduce the intended number needed

The following command will reduce the scale from 5 to 2

``` docker-compose up --scale container_name=2 ```

Compose container configuration list or yaml file

``` docker-compose config ```

To list the compose container servies

``` docker-compose -f filename.yaml config --services ```

To list the compose container volumes attached

``` docker-compose -f filename.yaml config --volumes ```
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Load Balancing when multi container is deployed

Steps for Load balancer

- Have load balancer establised in a yaml file
- All the services should be redirected to a single load balancer port
- Run the docker-compose with the load balancer file and scale up particular service

``` docker-compose -p network_name -f file.yaml up -d --scale Service/DNS_name=4 ```
- Keep pinging the container with DNS
- Obsere: Container & it's ip changes on every ping

``` curl -H "Host: DNS-Name" 0.0.0.0:8080/text ```

Binding Tools (to extract the ips of all servies)

``` docker-compose -p network_name -f file.yaml exec container_name apk add -q --update bind-tools ```

To get ips of a specific service

``` docker-compose -p network_name -f file.yaml exec container_name host service_name ```
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

