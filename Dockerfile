FROM ubuntu:22.10
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update 
RUN apt install  curl -y
RUN curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt install nodejs


# RUN mkdir /home/app
# WORKDIR /app
# COPY . ./