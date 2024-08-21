FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y

RUN apt install dnsutils bind9 bind9-utils -y

COPY ifrn.asa.br /etc/bind
COPY named.conf.local /etc/bind

EXPOSE 53/tcp
EXPOSE 53/udp 

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]