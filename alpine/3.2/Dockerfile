FROM alpine:3.1

MAINTAINER Yifan Gao <docker@yfgao.com>

ENV ASSETS_DIR="/opt/smartentry/HEAD"

RUN apk --update add bash tar && rm -rf /var/cache/apk/*

COPY smartentry.sh /sbin/smartentry.sh

ENTRYPOINT ["/sbin/smartentry.sh"]

CMD ["run"]
