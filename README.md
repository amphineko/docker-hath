# HatD

It's HatH on Docker!

This repository serves as an solution to easily deploy Hath on cloud servers.

## Usage

*Please be mentioned that Docker installation, configuration and usage are not covered here. Please refer to other documents.*

*Following commands and details are provided as demonstration, modify before using to fit your real scenario.*

**Improper usage of this repository and your HatH key can result in a penalty or even a permanent ban (e.g login rate limit). The author should not be responsible for your failures. You have been warned.**

---

First, checkout this repository

    git checkout https://github.com/amphineko/hatd

Configure your HatH credentials before starting up

    vi volumes/data/client_login

For example, your Client ID# is `114514` with Client Key `95iIdOm7TVxuCKYk7gue`, as shown in HatH client settings

Put the following string into `client_login` file, the Client ID# and Key are separated by a dash

    114514-95iIdOm7TVxuCKYk7gue

And start your Docker instance to see if it works

    docker-compose up

You may use `-d` (detached) to leave it running in background

    docker-compose up -d

---

You may find the images published on Github Packages are outdated

Remove this line in your docker-compose.yml

    image: docker.pkg.github.com/amphineko/hath-docker/hath:1.6.0

And uncomment following lines to build the image locally

    build:
        args:
            - version=1.6.0
        context: hath

Remember to replace `1.6.0` with the latest version number

---

The Docker image should restart automatically when it crashes or fails.

However, Docker limits the maximum retries of restarting, so be alerted on HatH dashboard about your trust and quality in the first days.
