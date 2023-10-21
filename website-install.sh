#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/BlacOrpheus/Dating-App/archive/refs/heads/master.zip
unzip master.zip
cp -r Dating-App-master/* /var/www/html/
rm -rf Dating-App-master master.zip
systemctl enable httpd 
systemctl start httpd
