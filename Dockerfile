# syntax=docker/dockerfile:1
FROM node:12-alpine
MAINTAINER FlyInk13 <eee@vk.com>
WORKDIR /home/basic-server-image
COPY . .
EXPOSE 80
RUN echo "require('http').createServer((q,r)=>console.log(q.method,q.url,r.end(q.url))).listen(80)" > server.js
VOLUME /home/basic-server-image/data
CMD nodejs server.js
