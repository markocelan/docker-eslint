FROM node:6-alpine

MAINTAINER marko.celan@gmail.com

RUN mkdir /src

# Hack to upgrade NPM:
#  - install local version
#  - replace old global verson with new one

RUN npm install npm@5.3 && \
    rm -fr /usr/local/lib/node_modules/npm && \
    mv /node_modules/npm  /usr/local/lib/node_modules

RUN npm install -g eslint@4.3.0  && \
    npm install -g eslint-plugin-jasmine@2.8.0

RUN npm install -g typescript@2.3.4 && \
    npm install -g tslint@5.5.0 && \
    npm install -g tslint-eslint-rules@4.1.1 && \
    npm install -g tslint-jasmine-rules@1.3.0

# Cleanup
RUN rm -fr /root/.npm /node_modules

WORKDIR /src
ENTRYPOINT ["/usr/local/bin/eslint"]
