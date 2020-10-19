# HatD

It's H@H on Docker!

This repository serves as an solution to easily deploy H@h on cloud servers.

## Usage

**Improper usage of this repository and your H@H client key can result in a penalty (e.g login rate limit) or even a permanent ban. The author should not be responsible for your failures. You have been warned.**

*Please be mentioned that Docker installation, configuration and usage are not covered here. Please refer to other documents.*

*Following commands and details are provided as demonstration, modify before using to fit your real scenario.*

### docker-compose (recommended)

First, `git checkout` this repository.

    $ git checkout https://github.com/amphineko/hatd

Then configure your H@H credential environment variables in `docker-compose.yml` before starting up

    > vi docker-compose.yml

    ...
        environment:
            CLIENT_ID: 0
            CLIENT_KEY: undefined
    ...

For example, while your **Client ID** is `114514` with **Client Key** `95iIdOm7TVxuCKYk7gue`, your `docker-compose.yml` should be configured like this:

    > vi docker-compose.yml

    ...
        environment:
            CLIENT_ID: 114514
            CLIENT_KEY: 95iIdOm7TVxuCKYk7gue
    ...

You might also need to configure your listening port to fit your need. Both of the numbers separated by the colon should be modified. Also check [Compose file reference](https://docs.docker.com/compose/compose-file/#ports) for how to configure it.

    > vi docker-compose.yml

    ...
        ports:
            - 8443:8443
    ...

And bring up your Docker container to see if it works.

    > docker-compose up

You may use `-d` (detached) to leave it running in background

    > docker-compose up -d

The Docker image should restart automatically when it crashes or fails.

However, Docker limits the maximum retries of restarting, so be alerted on H@H dashboard about your trust and quality in the first days.

## Environment variables

You can set your H@H credential via environment variables, instead of using `docker run --rm hath` to create a login file.

Two environment variables `CLIENT_ID` and `CLIENT_KEY` are available now.
