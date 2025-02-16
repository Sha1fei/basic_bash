FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo -y

RUN groupadd valentinGroup

RUN useradd -d /home/valentin -m -s /bin/bash -g valentinGroup valentin

RUN echo "123\n123" | passwd valentin

RUN mkdir -p /home/valentin/.ssh

COPY ./id_rsa.pub /home/valentin/.ssh/authorized_keys

RUN chown valentin /home/valentin/.ssh/authorized_keys && chgrp valentinGroup /home/valentin/.ssh/authorized_keys && chmod 640 /home/valentin/.ssh/authorized_keys

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]