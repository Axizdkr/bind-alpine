FROM alpine

ARG	webmin_version=1.860

RUN apk --update upgrade && \
    apk add --update bind && \
    rm -rf /var/cache/apk/*

ENV	DATA_DIR=/data

VOLUME	[/data]

COPY entrypoint.sh /sbin/entrypoint.sh

RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 53/udp 53/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
