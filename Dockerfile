FROM ubuntu:latest 
## pulling an existing image

ENV HOME /root
## To initiate from root

LABEL ubuntu=myubuntu

ENTRYPOINT ["/bin/ping","-c","3"]
##Commands which runs when container is created

RUN useradd -m -G root testuser1

USER root

RUN apt-get update && apt-get install net-tools -y

RUN apt-get install iputils-ping -y
