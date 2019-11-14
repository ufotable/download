FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

cd /home/files && wget https://build.nethunter.com/contributors/re4son/angler/angler-n4f26u-factory-131d7b01.zip && \
wget https://build.nethunter.com/contributors/re4son/angler/bootloader-angler-angler-03.68.img && \
wget https://build.nethunter.com/contributors/re4son/angler/lineage-14.1-20180219-nightly-angler-signed.zip && \
wget https://build.nethunter.com/contributors/re4son/angler/nethunter-angler-nougat-kalifs-full-2019.3.zip && \
wget https://build.nethunter.com/contributors/re4son/angler/open_gapps-arm64-7.1-nano-20190803.zip && \
wget https://build.nethunter.com/contributors/re4son/angler/radio-angler-angler-03.81.img && \
wget https://build.nethunter.com/contributors/re4son/angler/vendor-n2g48c.img && \
wget https://build.nethunter.com/contributors/re4son/angler/nethunter-angler-nougat-kalifs-full-2019.3.zip.sha256

USER root
