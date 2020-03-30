FROM node:11-alpine

COPY . /tmp/src/

RUN apk add --no-cache openssl && yarn global add "file:/tmp/src" && rm -rf /tmp/*

ENTRYPOINT [ "automerge-action" ]
