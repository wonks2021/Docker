FROM ping2:latest

ENV HOME /root

LABEL ubuntu=myubuntu

ENTRYPOINT ["/bin/ping","-c","3"]

RUN useradd -m -G root testuser1

USER root

RUN apt-get update && apt-get install net-tools -y

RUN apt-get install iputils-ping -y
