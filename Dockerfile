FROM ubuntu:trusty
MAINTAINER Carles Figuera <cfiguera@referup.com>

ENV PHANTOMJS_VERSION 2.0.0

RUN apt-get update -qq && apt-get upgrade -y && apt-get install -y \
  git \
  build-essential \
  g++ \
  flex \
  bison \
  gperf \
  ruby \
  perl \
  libsqlite3-dev \
  libfontconfig1-dev \
  libicu-dev \
  libfreetype6 \
  libssl-dev \
  libpng-dev \
  libjpeg-dev \
  libqt5webkit5-dev

RUN git clone https://github.com/ariya/phantomjs.git /tmp/phantomjs && \
  cd /tmp/phantomjs && git checkout $PHANTOMJS_VERSION && \
  ./build.sh --confirm && mv bin/phantomjs /usr/local/bin && \
  rm -rf /tmp/phantomjs