FROM creativeprojects/php-fpm:5.6.28

ARG USER_ID=1000
ARG GROUP_ID=50

EXPOSE 9000

RUN groupdel staff
RUN groupadd -f -o -g $GROUP_ID staff
RUN useradd -m -s /bin/bash -u $USER_ID -g staff docker

ADD php-fpm.conf /usr/local/etc

WORKDIR /home/docker
