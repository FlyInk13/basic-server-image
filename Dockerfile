# syntax=docker/dockerfile:1
FROM node:12-alpine
MAINTAINER FlyInk13 <dev@ifx.su>
WORKDIR /home/basic-server-image
COPY . .
EXPOSE 80
RUN echo "require('http').createServer((q,r) => r.end(q.method + ' ' + q.url + ' ' + process.env.BACKEND)).listen(80)" > server.js
VOLUME /home/basic-server-image/data
CMD nodejs server.js
