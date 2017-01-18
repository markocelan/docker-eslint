FROM node:7.4-alpine

MAINTAINER marko.celan@gmail.com

RUN mkdir /src \
    && npm install -g eslint@3.13.1 \
    && npm install -g eslint-plugin-jasmine@2.2.0 \
    && rm -fr /root/.npm
WORKDIR /src
ENTRYPOINT ["/usr/local/bin/eslint"]
