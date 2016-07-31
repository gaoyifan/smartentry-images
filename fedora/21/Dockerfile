FROM fedora:21

MAINTAINER Yifan Gao <docker@yfgao.com>

ENV ASSETS_DIR="/opt/proj/docker"

RUN yum install -y tar && yum clean all

COPY smartentry.sh /sbin/smartentry.sh

ENTRYPOINT ["/sbin/smartentry.sh"]
