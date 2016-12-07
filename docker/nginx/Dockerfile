FROM nginx:latest

ARG USER_ID=1000
ARG GROUP_ID=50

EXPOSE 80

RUN groupdel staff
RUN groupadd -f -o -g $GROUP_ID staff
RUN useradd -m -s /bin/bash -u $USER_ID -g staff docker

ADD default.conf /etc/nginx/conf.d/

WORKDIR /home/docker
