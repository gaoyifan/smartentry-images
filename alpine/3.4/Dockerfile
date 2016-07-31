FROM alpine:3.4

MAINTAINER Yifan Gao <docker@yfgao.com>

ENV ASSETS_DIR="/opt/proj/docker"

RUN apk add --no-cache bash tar

COPY smartentry.sh /sbin/smartentry.sh

ENTRYPOINT ["/sbin/smartentry.sh"]
