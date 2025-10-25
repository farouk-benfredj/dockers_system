FROM ubuntu:24.04 AS build

RUN apt update && apt install -y \
    build-essential cmake git pkg-config libboost-all-dev

WORKDIR /workspace
VOLUME ["/workspace"]

ENV IMAGE_NAME=docker-minimal

CMD ["bash"]
