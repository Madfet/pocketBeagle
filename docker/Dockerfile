FROM ubuntu:22.04
LABEL Description=" This image is for building Yocto images in a ubuntu 22.04 container"

ARG UID=1000
ARG GID=1000
ARG USR="BobTheBuilder"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        locales \
        gawk \
        wget \
        git-core \
        diffstat \
        unzip \
        texinfo \
        gcc-multilib \
        build-essential \
        chrpath \
        socat \
        libsdl1.2-dev\
        ninja-build \
        cpio \
        python2.7 \
        python3 \
        python3-pip \
        python3-setuptools \
        python3-setuptools-scm \
        python3-wheel \
        pandoc \
        texlive \
        texlive-xetex \
        texlive-fonts-extra \
        sudo \
        ncurses-dev \
        screen \
        file \
        zstd \
        liblz4-tool \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g $GID $USR
RUN useradd -l -u $UID -g $USR -m $USR

RUN localedef -i en_US -f UTF-8 en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

USER $USR
WORKDIR /home/$USR

# set dummy git config
RUN git config --global user.name "$USR" && git config --global user.email $USR"@example.com"
