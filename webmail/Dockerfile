FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y
RUN apt-get install -y postfix
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-pop3d 
RUN apt-get install -y mailutils
RUN apt-get install -y telnet
RUN apt-get install -y -q syslog-ng


COPY main.cf /etc/postfix/
COPY dovecot.conf /etc/dovecot/
COPY 10-auth.conf /etc/dovecot/conf.d/
COPY 10-mail.conf /etc/dovecot/conf.d/
COPY 10-master.conf /etc/dovecot/conf.d/

RUN useradd -m joao
RUN useradd -m maria
RUN useradd -m bob
RUN useradd -m silvio

RUN echo "joao:redes"|chpasswd 
RUN echo "maria:redes"|chpasswd 
RUN echo "bob:redes"|chpasswd 
RUN echo "silvio:redes"|chpasswd 

CMD service syslog-ng start && \
    service postfix start && \
    service dovecot start && \
    tail -F /var/log/mail.log
    
EXPOSE 25 110 143 993
