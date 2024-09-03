FROM nginx:latest

RUN apt-get update && apt-get install -y dnsutils
RUN apt-get upgrade -y

COPY default.conf /etc/nginx/conf.d/default.conf

COPY ./certificate.crt /etc/ssl/certs
COPY ./key.key /etc/ssl/private

RUN chown -R root:root /etc/ssl/private
RUN chmod -R 600 /etc/ssl/private