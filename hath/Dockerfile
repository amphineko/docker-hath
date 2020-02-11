FROM alpine:3.10

RUN apk add --no-cache curl openjdk11-jre-headless

RUN mkdir /hath

WORKDIR /hath

ARG version

RUN echo Building Docker image with HentaiAtHome version $version

RUN curl -o HentaiAtHome.zip https://repo.e-hentai.org/hath/HentaiAtHome_$version.zip \
    && unzip HentaiAtHome.zip

CMD java -jar HentaiAtHome.jar

VOLUME ["/hath/cache", "/hath/data", "/hath/download", "/hath/log", "/hath/tmp"]
