FROM ubuntu:22.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y \
gawk \
wget \
git \
diffstat \
unzip \
texinfo \
gcc \
build-essential \
chrpath \
socat \
cpio \
python3 \
python3-pip \
python3-pexpect \
xz-utils \
debianutils \
iputils-ping \
python3-git \
python3-jinja2 \
libegl1-mesa \
libsdl1.2-dev \
python3-subunit \
mesa-common-dev \
zstd \
liblz4-tool \
file \
locales \
libacl1 \
nano

RUN apt-get install -y git make inkscape texlive-latex-extra
RUN apt-get install -y sphinx python3-saneyaml python3-sphinx-rtd-theme

RUN apt install dumb-init

RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN useradd -ms /bin/bash user

WORKDIR /home/user
RUN mkdir sources && chown user:user sources
RUN mkdir localconf && chown user:user localconf
RUN mkdir outputs && chown user:user outputs

RUN chown -R user:user /home/user

# Set Yocto localconf path
ENV TEMPLATECONF /home/user/localconf

USER user

ENTRYPOINT ["dumb-init", "/home/user/buildscript.sh"]