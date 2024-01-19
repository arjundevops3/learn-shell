cd /tmp
url="https://releases.wikimedia.org/mediawiki/1.41/mediawiki-1.41.0.tar.gz"
curl -O $url
folder=$(echo $url | awk -F / '{print $6}' | sed 's/.tar.gz//')
yum install httpd -y
rm -rf /var/www/html/*
cd  /var/www/html

tar -xf /tmp/mediawiki-1.41.0.tar.gz
mv $folder mediawiki