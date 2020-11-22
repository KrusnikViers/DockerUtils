FROM ubuntu:18.04
ENTRYPOINT ["/bin/bash"]

RUN \
    apt -y update && \
    apt -y upgrade && \
    apt -y install \
        build-essential \
        libssl-dev \
        wget \
        && \
    apt -y autoremove && \
    apt -y autoclean && \
    apt -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    exit 0

RUN \
    wget https://github.com/Kitware/CMake/releases/download/v3.19.0/cmake-3.19.0.tar.gz && \
    tar -zxvf cmake-3.19.0.tar.gz && \
    cd cmake-3.19.0 && \
    ./bootstrap && \
    make install clean && \
    exit 0

RUN \
    cmake --version && \
    exit 0
