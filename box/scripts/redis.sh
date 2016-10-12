#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y redis-server
sudo cp /etc/redis/redis.conf /etc/redis/redis.conf.old
sudo cat /etc/redis/redis.conf.old | grep -v bind > /etc/redis/redis.conf
echo "bind 0.0.0.0" >> /etc/redis/redis.conf
sudo update-rc.d redis-server defaults
sudo /etc/init.d/redis-server start
