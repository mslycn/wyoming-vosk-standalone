# https://github.com/home-assistant/docker-base
ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base-debian:bookworm
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install wyoming-vosk
WORKDIR /usr/src
ARG WYOMING_VOSK_VERSION
ENV PIP_BREAK_SYSTEM_PACKAGES=1


