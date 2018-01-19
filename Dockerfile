FROM ubuntu:xenial
MAINTAINER 1m38

# install texlive-lang-cjk
RUN apt-get update && apt-get -y upgrade && apt-get -y install texlive texlive-lang-cjk xdvik-ja gv texlive-fonts-recommended texlive-fonts-extra latexmk && apt-get clean
