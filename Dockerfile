MAINTAINER https://github.com/maverage
FROM codercom/code-server:latest
RUN apk add --no-cache software-properties-common build-essential git openjdk-11-jre openjdk-11-jdk
