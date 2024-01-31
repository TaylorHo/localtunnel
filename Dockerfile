FROM alpine:latest

WORKDIR /
RUN apk add --no-cache --update nodejs npm
RUN npm i -g localtunnel

CMD ["sh", "-c", "npx localtunnel --port $PORT --subdomain $SUBDOMAIN"]
