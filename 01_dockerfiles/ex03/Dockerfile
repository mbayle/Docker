FROM ubuntu:16.04
MAINTAINER mabayle

# Install required packages
RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    ca-certificates \
    openssh-server \
    wget \
    apt-transport-https \
    vim \
    tzdata \
    nano \
	curl \
	sudo \
    && rm -rf /var/lib/apt/lists/* \

# Gitlab CE package
RUN apt-get install gitlab-ce
RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
RUN sudo bash

# Remove MOTD
RUN rm -rf /etc/update-motd.d /etc/motd /etc/motd.dynamic
RUN ln -fs /dev/null /run/motd.dynamic

# Allow to access embedded tools
ENV PATH /opt/gitlab/embedded/bin:/opt/gitlab/bin:/assets:$PATH

# Expose web & ssh
EXPOSE 443 80 22

# Define data volumes
VOLUME ["/etc/gitlab", "/var/opt/gitlab", "/var/log/gitlab"]

ENTRYPOINT 'bin/bash'

#docker build -t ex03
#docker run -it --rm -p 80:80 -p 21:22 --privileged ex03
