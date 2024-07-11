FROM ubuntu:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/*

COPY godot-download.sh ./

ARG GODOT_VERSION="4.2.2-stable"
ARG GODOT_PLATFORM="linux.x86_64"
RUN bash godot-download.sh $GODOT_VERSION $GODOT_PLATFORM

RUN godot -v -e --quit --headless