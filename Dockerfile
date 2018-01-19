FROM ubuntu:17.10
MAINTAINER 1m38

# install texlive-lang-cjk
RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install texlive texlive-lang-cjk texlive-luatex xdvik-ja gv texlive-fonts-recommended texlive-fonts-extra latexmk && \
    apt-get clean && \
    luaotfload-tool -u -v

VOLUME /data
WORKDIR /data
