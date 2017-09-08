FROM ubuntu:16.04

MAINTAINER Ngo Trung Thang vs Nguyen Thanh Hai

RUN DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y ruby ruby-dev gcc make python-software-properties curl

RUN gem install sass

RUN curl -sl https://deb.nodesource.com/setup_8.x | bash -

RUN apt install nodejs

RUN npm install -g yarn gulp webpack

RUN apt install nginx -i

CMD ["/usr/sbin/nginx", "-g", "deamon off;"]