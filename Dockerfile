FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    openssh-server \
    nodejs \
    npm \
    wget \
    python3 \
    vim-tiny \
    sudo 

RUN userdel -r ubuntu

RUN useradd -m -s /bin/bash floki && \
    echo "floki:b.t9[M2:4~C5lJ24V'o" | chpasswd && \
    chown -R floki:floki /home/floki && \
    mkdir /home/floki/.ssh/

RUN echo "floki ALL=(ALL) NOPASSWD: /usr/bin/vi" >> /etc/sudoers

RUN mkdir /var/run/sshd
RUN mkdir /var/labsdata/

COPY app /home/floki/app
WORKDIR /home/floki/app
RUN chmod 755 /home/floki/*
RUN npm init -y
RUN npm install


COPY entrypoint.sh /var/labsdata/
COPY flag.sh /var/labsdata/
COPY ssh-key /var/labsdata/ssh-key

RUN chmod +x /var/labsdata/*
EXPOSE 80
EXPOSE 22
ENTRYPOINT ["/var/labsdata/entrypoint.sh"]
