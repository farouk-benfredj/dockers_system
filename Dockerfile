FROM ubuntu:24.04 AS build

RUN apt update && apt install -y \
    build-essential cmake git pkg-config libboost-all-dev gdb

WORKDIR /workspace
VOLUME ["/workspace"]

ENV IMAGE_NAME=docker-minimal

RUN echo 'export PS1='\''\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]$(if git rev-parse --git-dir > /dev/null 2>&1; then echo " \[\e[33m\]$(git branch --show-current)"; tag=$(git describe --tags --exact-match 2>/dev/null); if [ -n "$tag" ]; then echo " \[\e[35m\]$tag"; fi; fi)$(if [ $? -ne 0 ]; then echo " \[\e[31m\]✗"; fi)\[\e[0m\] $ '\'' ' >> /root/.bashrc

CMD ["bash"]
