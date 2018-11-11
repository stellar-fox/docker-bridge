FROM ubuntu:18.04

MAINTAINER Grzegorz Szadkowski <5392918+gszadkow@users.noreply.github.com>

ENV BRIDGE_VERSION=v0.0.31

RUN set -e \
    && apt update -y \
    && apt install -y \
       bash \
       wget \
    && wget -O bridge-${BRIDGE_VERSION}-linux-amd64.tar.gz https://github.com/stellar/bridge-server/releases/download/${BRIDGE_VERSION}/bridge-${BRIDGE_VERSION}-linux-amd64.tar.gz  \
    && tar xvzf bridge-${BRIDGE_VERSION}-linux-amd64.tar.gz \
    && mv bridge-${BRIDGE_VERSION}-linux-amd64/bridge /usr/bin/. \
    && rm -rf bridge-${BRIDGE_VERSION}-linux-amd64 bridge-${BRIDGE_VERSION}-linux-amd64.tar.gz
