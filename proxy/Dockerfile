FROM nginx:latest

RUN apt-get update && apt-get install -y dnsutils

COPY default.conf /etc/nginx/conf.d/default.conf