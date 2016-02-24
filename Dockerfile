FROM ubuntu:trusty
MAINTAINER Carles Figuera <cfiguera@referup.com>

ENV PHANTOMJS_VERSION 2.1.1

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    wget \
    bzip2 \
    libsqlite3-dev \
    libfontconfig1-dev \
    libicu-dev \
    libfreetype6 \
    libssl-dev \
    libpng-dev \
    libjpeg-dev \
    libqt5webkit5-dev

RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    tar -jxf phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    mv phantomjs-$PHANTOMJS_VERSION-linux-x86_64 /opt/phantom && \
    ln -s /opt/phantom/bin/phantomjs /usr/local/bin/phantomjs && \
    rm phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2

RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*