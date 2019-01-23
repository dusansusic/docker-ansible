# Pull base image.
FROM ubuntu:16.04

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv

RUN \
  pip install ansible==${ANSIBLE_VERSION}

RUN \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]