FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && wget https://vagrantcloud-files-production.s3.amazonaws.com/archivist/boxes/27116fed-f67a-4f0f-9377-481c3e2a2893?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAIA4WZ7ZDX3WM4HDQ%2F20191113%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20191113T054359Z&X-Amz-Expires=60&X-Amz-SignedHeaders=host&X-Amz-Signature=d51b1a8031804cc7fd2f4f8aa0d368be512c7ae443660203f1371bd500985a3e

USER root
