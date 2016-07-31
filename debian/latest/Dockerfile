FROM debian

MAINTAINER Yifan Gao <docker@yfgao.com>

ENV ASSETS_DIR="/opt/proj/docker"

COPY smartentry.sh /sbin/smartentry.sh

ENTRYPOINT ["/sbin/smartentry.sh"]
