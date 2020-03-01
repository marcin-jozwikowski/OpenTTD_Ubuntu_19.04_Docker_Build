FROM ubuntu:19.04

ENV DEBIAN_FRONTEND=noninteractive

# BASED ON IMAGES BY OPENTTD
LABEL \
    maintainer="info@openttd.org" \
    org.label-schema.description="OpenTTD Compile-Farm images" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://www.openttd.org/" \
    org.label-schema.vcs-url="https://github.com/OpenTTD/OpenTTD-CF" \
    org.label-schema.vendor=OpenTTD

# Dependencies needed to compile OpenTTD
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && \
    apt-get install -y --no-install-recommends \
    \
    binutils \
    bzip2 \
    ca-certificates \
    cmake \
    git \
    gnupg2 \
    gcc \
    g++ \
    libc6-dev \
    libfile-fcntllock-perl \
    libfontconfig-dev \
    libicu-dev \
    liblzma-dev \
    liblzo2-dev \
    libsdl1.2-dev \
    libsdl2-dev \
    libxdg-basedir-dev \
    make \
    software-properties-common \
    tar \
    wget \
    xz-utils \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /OpenTTDReleases

COPY ./build.sh /build.sh

RUN chmod +x /build.sh

CMD /build.sh
