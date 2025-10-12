FROM ubuntu:24.04 AS build

RUN apt update && apt install -y \
    build-essential cmake git pkg-config libboost-all-dev

# Install vsomeip
# RUN git clone https://github.com/COVESA/vsomeip.git /tmp/vsomeip && \
#     cd /tmp/vsomeip && mkdir build && cd build && \
#     cmake .. && make -j$(nproc) && make install

WORKDIR /workspace
VOLUME ["/workspace"]
# COPY . .

CMD ["bash"]
