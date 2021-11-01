FROM ubuntu:16.04
RUN apt-get update && \
      apt-get -y install sudo
RUN useradd -m deploy && echo "deploy:deploy" | chpasswd && adduser deploy sudo

#RUN apt-get -y install git


USER deploy
CMD /bin/bash