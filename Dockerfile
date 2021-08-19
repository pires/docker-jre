FROM alpine:3.14

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN apk update --update-cache; \
    apk --no-cache add openjdk8-jre;

CMD ["java", "-version"]
