FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y
RUN apt-get install -y postfix
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-pop3d 
RUN apt-get install -y mailutils
RUN apt-get install -y telnet
RUN apt-get install -y -q syslog-ng


COPY main.cf /etc/postfix/
COPY master.cf /etc/postfix/
COPY dovecot.conf /etc/dovecot/
COPY 10-auth.conf /etc/dovecot/conf.d/
COPY 10-mail.conf /etc/dovecot/conf.d/
COPY 10-master.conf /etc/dovecot/conf.d/
COPY certificate.crt /etc/ssl/certs/certificate.crt
COPY key.key /etc/ssl/private/key.key

RUN chown root:dovecot /etc/ssl/private/key.key
RUN chown root:dovecot /etc/ssl/certs/certificate.crt

RUN useradd -m joao
RUN useradd -m maria
RUN useradd -m bob
RUN useradd -m silvio

RUN echo "joao:redes"|chpasswd 
RUN echo "maria:redes"|chpasswd 
RUN echo "bob:redes"|chpasswd 
RUN echo "silvio:redes"|chpasswd 

RUN mkdir /home/joao/Maildir
RUN mkdir /home/maria/Maildir
RUN chown -R joao:joao /home/joao/Maildir
RUN chown -R maria:maria /home/maria/Maildir
RUN chmod -R 700 /home/joao/Maildir
RUN chmod -R 700 /home/maria/Maildir




CMD service syslog-ng start && \
    service postfix start && \
    service dovecot start && \
    tail -F /var/log/mail.log
    
EXPOSE 25 110 143 993 465 587
