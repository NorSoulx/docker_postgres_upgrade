#!/bin/bash
mkdir -p build
docker build -t centos7_pg11 -f centos7_pg11_dockerfile build
