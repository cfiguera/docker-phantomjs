FROM ubuntu:trusty
MAINTAINER Carles Figuera <cfiguera@referup.com>

ENV PHANTOMJS_VERSION 2.1.1
RUN apt-get update && apt-get install -y bzip2 && \
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    tar -jxf phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    mv phantomjs-$PHANTOMJS_VERSION-linux-x86_64 /opt/phantom && \
    ln -s /opt/phantom/bin/phantomjs /usr/bin/phantomjs && \
    rm phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2
