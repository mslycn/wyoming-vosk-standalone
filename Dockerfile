ARG BUILD_FROM=arm64v8/ubuntu:22.04
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install wyoming-vosk
WORKDIR /usr/src
ARG WYOMING_VOSK_VERSION
ENV PIP_BREAK_SYSTEM_PACKAGES=1

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        netcat-traditional \
        python3 \
        python3-pip \
        libatomic1 \
    && pip3 install --no-cache-dir -U \
        setuptools \
        wheel \
    && pip3 install --no-cache-dir \
        --extra-index-url https://www.piwheels.org/simple \
        -f . \
        "wyoming-vosk[limited] @ https://github.com/rhasspy/wyoming-vosk/archive/refs/tags/v${WYOMING_VOSK_VERSION}.tar.gz" \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /
COPY start.sh /start.sh
ENTRYPOINT ["bash", "start.sh"]
