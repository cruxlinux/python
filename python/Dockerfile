FROM crux/base:latest
MAINTAINER James Mills <prologic@shortcircuitnet.au>

CMD ["python"]

RUN ports -u && \
    prt-get cache && \
    prt-get depinst python setuptools pip git mercurial && \
    rm -rf /usr/lib/python/test && \
    rm -rf /usr/ports/*
