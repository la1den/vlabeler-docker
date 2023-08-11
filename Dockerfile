From ubuntu:20.04

WORKDIR /app

COPY vlabeler-1.0.0-beta16-amd64.deb .

ARG DEBIAN_FRONTEND=noninteractive 

RUN apt update 
RUN apt install -y libcanberra-gtk-module \
    libcanberra-gtk3-module 
RUN mkdir /usr/share/desktop-directories
RUN apt install -y ./vlabeler-1.0.0-beta16-amd64.deb
RUN apt clean

ENTRYPOINT ["/bin/bash"]
