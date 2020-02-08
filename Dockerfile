FROM node:13.8.0-alpine3.11

ARG EASYRTC_VERSION='v1.1.1-rc2'

EXPOSE 8080

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN mkdir -p /app && \
    cd /app && \
    git clone https://github.com/priologic/easyrtc.git

WORKDIR /app/easyrtc
RUN git checkout tags/$EASYRTC_VERSION
RUN npm install

WORKDIR /app/easyrtc/server_example
RUN npm install

CMD [ "node", "server.js" ]

