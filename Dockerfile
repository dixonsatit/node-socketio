# base container with production deps
FROM node:10.11.0-alpine as base

LABEL maintainer="Sathit Seethaphon <dixonsatit@gmail.com>"

WORKDIR /app
RUN apk update && apk add python g++ make && rm -rf /var/cache/apk/*
COPY ./package*.json ./
RUN mkdir node_modules
RUN npm install --only=production

COPY ./ ./

EXPOSE 3002

CMD [ "node", "app.js" ]
