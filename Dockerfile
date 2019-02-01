# Pull base image.
FROM ubuntu:16.04

ARG ANSIBLE_VERSION
ENV ANSIBLE=${ANSIBLE_VERSION}
# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv

RUN \
  pip install ansible==${ANSIBLE}

RUN \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["ansible-playbook"]
