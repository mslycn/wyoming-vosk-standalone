BUILD_FROM=ghcr.io/home-assistant/arm64-base-debian:bookworm
WYOMING_VOSK_VERSION=1.5.0
docker build --build-arg BUILD_FROM=${BUILD_FROM} \
      --build-arg WYOMING_VOSK_VERSION=${WYOMING_VOSK_VERSION} \
      -t wyoming-vosk-standalone:${WYOMING_VOSK_VERSION} \
      -f Dockerfile .
