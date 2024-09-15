FROM ubuntu:latest

RUN apt-get update && apt-get install -y openssh-server iputils-ping telnet
RUN mkdir /var/run/sshd
RUN echo 'root:admin' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

COPY hello.sh ./root/

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]