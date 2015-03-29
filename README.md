# docker-jre
Lean (174MB) JRE 8 Docker image, based on `progrium/busybox`.

## Current software

* Oracle JRE 8 Update 40

## Pre-requisites

* Docker 1.5.0+ (tested with boot2docker)

## Build images (optional)

Providing your own version of [the image automatically built for Logstash](https://registry.hub.docker.com/u/pires/docker-jre) will not be supported. This is an *optional* step. You have been warned.

```
git clone https://github.com/pires/docker-jre.git
cd docker-jre
docker build -t pires/docker-jre .
```