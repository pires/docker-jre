FROM alpine:3.7
MAINTAINER pjpires@gmail.com

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN apk upgrade --update-cache; \
    apk add openjdk8-jre; \
    rm -rf /tmp/* /var/cache/apk/*; \
    # ld's backward compatibility for debian like OS
    mkdir /lib64 && ln -s /lib/ld-musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

CMD ["java", "-version"]
