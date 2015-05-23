# The Project from https://github.com/skynetservices/skydns
# Skydns Ver 2.2

FROM debian:6

MAINTAINER wujian@wujian360.cn

COPY etcdctl /usr/bin/etcdctl

COPY skydns /usr/bin/skydns

COPY run.sh /usr/bin/run.sh

RUN chmod 755 /usr/bin/*

EXPOSE 53

CMD ["run.sh"]