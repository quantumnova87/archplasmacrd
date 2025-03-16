FROM archlinux:latest

ARG USERNAME=user
ARG UID=1000
ARG GID=1000

RUN pacman -Syu --noconfirm \
    sudo \
    git \
    base-devel \
    xorg-server \
    xorg-xinit \
    kde-applications \
    plasma \
    pulseaudio \
    pulseaudio-alsa \
    pulseaudio-bluetooth \
    firefox \
    curl \
    wget \
    unzip \
    xrdp \
    nano \
    vim

RUN groupadd -g $GID $USERNAME && \
    useradd -m -u $UID -g $GID -s /bin/bash $USERNAME && \
    echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN curl -fsSL https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb -o /tmp/chrome-remote-desktop.deb && \
    pacman -U --noconfirm /tmp/chrome-remote-desktop.deb && \
    rm /tmp
