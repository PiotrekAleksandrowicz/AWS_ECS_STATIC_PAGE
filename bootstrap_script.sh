!#/bin/bash

sudo apt-get update && apt-get install -y apache2 wget
sudo systemctl start apache2
sudo systemctl enable apache2
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
unzip
sudo cp -r 2135_mini_finance.zip/* /var/www/html
systemctl restart apache2
rm -rf /tmp/webfiles
