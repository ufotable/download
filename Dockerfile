FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && wget https://vagrantcloud-files-production.s3.amazonaws.com/archivist/boxes/27116fed-f67a-4f0f-9377-481c3e2a2893?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAIA4WZ7ZDX3WM4HDQ%2F20191113%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20191113T053816Z&X-Amz-Expires=60&X-Amz-SignedHeaders=host&X-Amz-Signature=aae9024a14fe36faa3e97ff12266a02f2df13a0d5b3eaaa7c2709d9ddea07343
# wget https://vagrantcloud.com/artmello/boxes/centos5/versions/0.2.0/providers/libvirt.box

VOLUME /home/files

USER root
