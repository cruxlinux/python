FROM cruxlinux/base:latest
MAINTAINER James Mills <prologic@shortcircuitnet.au>

RUN ports -u && \
    prt-get cache && \
    prt-get depinst python setuptools pip && \
    rm -rf /usr/lib/python/test && \
    rm -rf /usr/ports/*

ONBUILD COPY requirements.txt /tmp/requirements.txt
ONBUILD RUN pip install -r /tmp/requirements.txt && rm /tmp/requirements.txt

ONBUILD WORKDIR /app
ONBUILD ADD . /app
ONBUILD RUN pip install .

CMD ["python"]
