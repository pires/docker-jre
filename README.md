# docker-jre
Lean (118MB) JRE 8 Docker image, based on `alpine:edge` and OpenJDK.

[![Docker Repository on Quay.io](https://quay.io/repository/pires/docker-jre/status "Docker Repository on Quay.io")](https://quay.io/repository/pires/docker-jre)

## Current software

* [OpenJDK 8u72](http://openjdk.java.net/projects/jdk8u/releases/8u72.html)

## Usage

```
docker pull quay.io/pires/docker-jre:8u72
```

### DNS workaround

Due to [the fact Alpine Linux uses `musl`](https://github.com/gliderlabs/docker-alpine/blob/master/docs/caveats.md#dns), I'm releasing a _workaround_ version of this image based on `janeczku/alpine-kubernetes:3.3`.

```
docker pull quay.io/pires/docker-jre:8u72-dns
```
