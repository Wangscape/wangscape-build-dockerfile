FROM ubuntu:rolling

MAINTAINER Łukasz Hryniuk <lukasz.hryniuk@protonmail.com>

RUN apt update && \
    apt install -y \
        cmake \
        g++ \
        libsfml-dev \
        libboost-system-dev \
        libboost-filesystem-dev \
        libboost-program-options-dev \
        libgtest-dev \
        libarmadillo-dev \
        qt5-default \
        xvfb

RUN cp /usr/share/SFML/cmake/Modules/FindSFML.cmake /usr/share/cmake*/Modules/

RUN cd /usr/src/gtest && \
    cmake . && \
    make && \
    cp *.a /usr/lib/
