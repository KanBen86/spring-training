FROM alpine:3.18.2

RUN wget -O /etc/apk/keys/adoptium.rsa.pub https://packages.adoptium.net/artifactory/api/security/keypair/public/repositories/apk
RUN echo 'https://packages.adoptium.net/artifactory/apk/alpine/main' >> /etc/apk/repositories

RUN apk update
RUN apk add temurin-17-jre

RUN mkdir /app
COPY *.jar /app 