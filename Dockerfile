FROM alpine:latest

RUN apk add --no-cache git bash

WORKDIR /workspace

CMD ["bash"]