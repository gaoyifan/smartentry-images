FROM ubuntu:14.04

MAINTAINER Yifan Gao <docker@yfgao.com>

ENV ASSETS_DIR="/opt/smartentry/HEAD"

COPY smartentry.sh /sbin/smartentry.sh

ENTRYPOINT ["/sbin/smartentry.sh"]

CMD ["run"]
