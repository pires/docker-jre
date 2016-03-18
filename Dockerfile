FROM janeczku/alpine-kubernetes:3.3
MAINTAINER pjpires@gmail.com

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN sed -i -e 's/v3\.3/edge/g' /etc/apk/repositories; apk upgrade --update-cache; \
    apk add openjdk8-jre; \
    rm -rf /tmp/* /var/cache/apk/*

CMD ["java", "-version"]
