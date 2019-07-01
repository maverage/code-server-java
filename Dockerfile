FROM codercom/code-server:latest
MAINTAINER https://github.com/maverage
RUN apk add --no-cache software-properties-common build-essential git openjdk-11-jre openjdk-11-jdk
