#!/bin/bash

sudo su

yum update -y
yum install httpd -y

systemctl start httpd
systemctl enable httpd

IP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
message="Hello world from ${IP}"
echo "${message}" >> /var/www/html/index.html

sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
