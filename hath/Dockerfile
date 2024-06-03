FROM alpine:3.12

RUN apk add --no-cache openjdk11-jre-headless tini

ARG HATH_PKG="https://repo.e-hentai.org/hath/HentaiAtHome_1.6.2.zip"
ARG HATH_SHA256="bb21adeb38e48aeb1892b5cbe603bfeea2c1d653c3d9fafc9e1b336ec0d32dda"

ENV HATH_PKG=${HATH_PKG}
ENV HATH_SHA256=${HATH_SHA256}

ADD $HATH_PKG /hath/HentaiAtHome.zip
RUN echo "$HATH_SHA256  /hath/HentaiAtHome.zip" | sha256sum -cw 
RUN unzip -d /hath /hath/HentaiAtHome.zip

ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

WORKDIR /hath

ENTRYPOINT /sbin/tini /bin/sh -- /docker-entrypoint.sh

VOLUME ["/hath/cache", "/hath/data", "/hath/download", "/hath/log", "/hath/tmp"]
