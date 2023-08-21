#!/bin/bash

# Installing docker

sudo yum install docker

sudo usermod -a -G docker ec2-user

id ec2-user

newgrp docker

sudo systemctl enable docker.service

sudo systemctl start docker.service

# Installing and running node_exporter

wget https://github.com/prometheus/node_exporter/releases/download/v1.6.0/node_exporter-1.6.0.linux-amd64.tar.gz

tar xvfz node_exporter-1.6.0.linux-amd64.tar.gz

nohup ./node_exporter-1.6.0.linux-amd64/node_exporter &

