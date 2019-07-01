FROM codercom/code-server:latest
MAINTAINER https://github.com/maverage
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils 2>&1 \
    && apt-get -y install --no-install-recommends openjdk-11-jdk \
    # Clean up
    && sudo apt-get autoremove -y \
    && sudo apt-get clean -y \
    && sudo rm -rf /var/lib/apt/lists/*
USER coder
ENTRYPOINT ["dumb-init", "code-server"]
