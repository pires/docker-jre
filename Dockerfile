FROM alpine:3.2
MAINTAINER pjpires@gmail.com

ENV JRE=jre1.8.0_51 \
    JAVA_HOME=/opt/jre

# That's an 1.8.0_60 JRE from OpenJDK.net
# Courtesy to https://github.com/frol/docker-alpine-oraclejdk8 from where the setup of glibc is borrowed
RUN apk add --update curl wget ca-certificates && \
    cd /tmp && \
    wget "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk" \
         "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-bin-2.21-r2.apk" && \
    apk add --allow-untrusted glibc-2.21-r2.apk glibc-bin-2.21-r2.apk && \
    /usr/glibc/usr/bin/ldconfig /lib /usr/glibc/usr/lib && \
    echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf && \
    mkdir /opt && cd /opt && \
    (curl -Lskj -b "oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u51-b16/server-jre-8u51-linux-x64.tar.gz | \
    gunzip -c - | tar xf - ) && \
    ln -s /opt/jdk1.8.0_51 /opt/jre && \
    ln -s /opt/jre/bin/java /usr/bin/java && \
    apk del curl wget ca-certificates && \
    rm /tmp/* /var/cache/apk/*

CMD ["java", "-version"]
