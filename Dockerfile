FROM codercom/code-server:latest
MAINTAINER https://github.com/maverage
RUN sudo apt-get update && sudo apt-get install -y \ 
  software-properties-common \
  build-essential \
  openjdk-11-jre \
  openjdk-11-jdk
