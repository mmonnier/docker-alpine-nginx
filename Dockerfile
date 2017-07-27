FROM alpine:3.6

LABEL maintainer Matthieu Monnier <matthieu.monnier@enalean.com>

RUN apk add --no-cache nginx \
    && rm /etc/nginx/conf.d/default.conf \
    && mkdir /run/nginx

ENTRYPOINT [ "/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf" ]
