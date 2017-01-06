FROM nginx:latest

ARG USER_ID=1000
ARG GROUP_ID=50

EXPOSE 80

RUN groupdel staff \
 && groupadd -f -o -g $GROUP_ID staff \
 && useradd -m -s /bin/bash -u $USER_ID -g staff docker

ADD default.conf /etc/nginx/conf.d/

WORKDIR /home/docker
