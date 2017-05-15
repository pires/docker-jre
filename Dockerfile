FROM alpine:3.5
MAINTAINER adam.skobodzinski@littlebits.cc

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN apk upgrade --update-cache; \
    apk add openjdk8-jre; \
    rm -rf /tmp/* /var/cache/apk/*

CMD ["java", "-version"]
