#!/usr/bin/env bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar xvfz node_exporter-1.3.1.linux-amd64.tar.gz
sudo mv node_exporter-1.3.1.linux-amd64/node_exporter /usr/local/bin/
sudo rm -rf node_exporter*
git clone https://github.com/Wultur/prometheus-25.git
sudo cp prometheus-25/node_exporter/node_exporter.service /etc/systemd/system/node_exporter.service
sudo rm -rf prometheus-25
sudo systemctl enable node_exporter
sudo systemctl start node_exporter

# Command for stress memory
# stress --vm 1 --vm-bytes 768M  --vm-keep