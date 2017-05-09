FROM openjdk:8-jdk

RUN apt-get update && apt-get install -y build-essential git curl tar gzip && mkdir -p ~/.m2

RUN curl -L -o /tmp/docker-17.03.0-ce.tgz https://get.docker.com/builds/Linux/x86_64/docker-17.03.0-ce.tgz && \
tar -xz -C /tmp -f /tmp/docker-17.03.0-ce.tgz && mv /tmp/docker/* /usr/bin
