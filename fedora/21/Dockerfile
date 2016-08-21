FROM fedora:21

MAINTAINER Yifan Gao <docker@yfgao.com>

ENV ASSETS_DIR="/opt/smartentry/HEAD"

RUN yum install -y tar && yum clean all

COPY smartentry.sh /sbin/smartentry.sh

ENTRYPOINT ["/sbin/smartentry.sh"]
