FROM kalilinux/kali-rolling
MAINTAINER erdinccurebal@hotmail.com
WORKDIR ~
COPY ./copy-files .

RUN apt update
RUN apt dist-upgrade -y
RUN apt upgrade -y 
RUN apt install kali-tools-web -y 
RUN apt autoremove
RUN apt clean
RUN apt autoclean

EXPOSE 80

CMD ["/bin/bash"]
