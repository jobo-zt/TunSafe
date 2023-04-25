#!/bin/sh

set -e
#cpp -D__ARM_ARCH__=7 crypto/chacha20/chacha20-arm.s > crypto/chacha20/chacha20-arm.preprocessed.s
#cpp -D__ARM_ARCH__=7 crypto/poly1305/poly1305-arm.s > crypto/poly1305/poly1305-arm.preprocessed.s

g++ -I . -g -O2 -DNDEBUG -DWITH_NETWORK_BSD=1 -fno-omit-frame-pointer -march=armv8-a -std=c++11 -pthread -o tunsafe \
tunsafe_amalgam.cpp -lrt \
crypto/chacha20/chacha20-arm64-linux.S \
crypto/poly1305/poly1305-arm64-linux.S \
