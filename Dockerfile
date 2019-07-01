FROM codercom/code-server:latest
MAINTAINER https://github.com/maverage
USER root
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils openjdk-11-jre openjdk-11-jdk maven 2>&1 \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
USER coder
ENTRYPOINT ["dumb-init", "code-server"]
