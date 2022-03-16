#!/usr/bin/env bash
sudo apt update
sudo apt install docker docker.io -y
sudo apt remove docker-compose -y
wget https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64
sudo mv docker-compose-linux-x86_64 /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
git clone https://github.com/Wultur/prometheus-25.git