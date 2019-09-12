#!/bin/bash
yum  -y remove  docker-common docker container-selinux docker-selinux docker-engine
sleep 2;
yum -y install  wget
sleep 2;
wget https://download.docker.com/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo
sleep 2;
yum -y install docker-ce
sleep 2;
