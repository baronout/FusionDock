FROM ubuntu:latest

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y dnsutils bind9 bind9-utils 

COPY jc.ifrn.asa.br /etc/bind/
COPY named.conf.local /etc/bind/

RUN chown -R bind:bind /etc/bind

EXPOSE 53/tcp
EXPOSE 53/udp 

# Inicia o servidor BIND em modo de depuração (-g), usa o arquivo de configuração especificado (-c), e roda como usuário 'bind' (-u)
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
