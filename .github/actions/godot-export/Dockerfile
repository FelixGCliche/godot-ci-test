FROM ubuntu:latest

USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    unzip \
    wget \
    zip \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh ./entrypoint.sh

ARG GODOT_VERSION
ARG PRESET_NAME
ARG EXPORT_NAME
ENTRYPOINT [ "/entrypoint.sh" ]