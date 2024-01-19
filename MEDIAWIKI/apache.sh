cd /tmp
url="https://releases.wikimedia.org/mediawiki/1.41/mediawiki-1.41.0.tar.gz"
curl -O $url

yum install httpd -y
cd /var/www/html
tar -xf mediawiki-1.41.0.tar.gz