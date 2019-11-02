FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
  wget https://vagrantcloud.com/centos/boxes/7/versions/1905.1/providers/libvirt.box 

VOLUME /home/files

USER root
