FROM alpine:latest

WORKDIR /
RUN apk add --no-cache --update nodejs npm
RUN npm i -g localtunnel

CMD ["npx", "localtunnel", "--port", "5678", "--subdomain", "hotay"]