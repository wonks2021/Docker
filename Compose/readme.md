##### Compose
Docker compose is used to run multiple containers with specfic purpose  using yaml

Eg: https://github.com/docker/awesome-compose/tree/master/prometheus-grafana

The above link consists of a model docker-compose

File name should be saved as docker-compose.yml to intitate the compose container

To list the docker-compose containers

``` docker-compose ps ```

To build the images present on yaml file

``` docker-compose build ```

To intiate a compose container (Note: without detached, the container will run on terminal)

``` docker-compose up -d```

To shutdown a docker-compose temporarily

``` docker-compose down ```

To get the logs of the compose

``` docker-compose logs ```

To inspect a compose containeer

``` docker-compose inspect container_name ```

To enter the compose container

``` docker-compose exec container_name ```

To restart the compose container

``` docker-compose restart container_name ```

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

``` docker-compose config --services ```

To list the compose container volumes attached

``` docker-compose config --volumes ```




##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

