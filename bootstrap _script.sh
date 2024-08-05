!#/bin/bash

sudo yum install wget unzip httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
unzip
sudo cp -r 2135_mini_finance.zip/* /var/www/html
systemctl restart httpd
rm -rf /tmp/webfiles
