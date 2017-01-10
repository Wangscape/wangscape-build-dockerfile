FROM ubuntu:16.04

MAINTAINER Łukasz Hryniuk <lukasz.hryniuk@protonmail.com>

RUN apt update && \
    apt install -y \
        cmake \
        g++ \
        libsfml-dev \
        libboost-system-dev \
        libboost-filesystem-dev \
        libboost-program-options-dev \
        libgtest-dev

RUN cp /usr/share/SFML/cmake/Modules/FindSFML.cmake /usr/share/cmake-3.5/Modules/

RUN cd /usr/src/gtest && \
    cmake . && \
    make && \
    cp *.a /usr/lib/
