# docker-jre
Lean (168MB) JRE 8 Docker image, based on `alpine:3.3`.

[![Docker Repository on Quay.io](https://quay.io/repository/pires/docker-jre/status "Docker Repository on Quay.io")](https://quay.io/repository/pires/docker-jre)

## Current software

* Oracle JRE 8 Update 74

## Usage

```
docker pull quay.io/pires/docker-jre:8u74
```

### DNS workaround

Due to [the fact Alpine Linux uses `musl`](https://github.com/gliderlabs/docker-alpine/blob/master/docs/caveats.md#dns), I'm releasing a _workaround_ version of this image based on `janeczku/alpine-kubernetes:3.3`.

```
docker pull quay.io/pires/docker-jre:8u74-dns
```
