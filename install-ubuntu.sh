#/bin/bash

#install dependencies
sudo apt-get install -y curl wget zip unzip

curl -s https://packagecloud.io/install/repositories/varnishcache/varnish74/script.deb.sh | sudo bash

#install varnish

sudo apt-get install varnish-dev -y

#add plugins modules

sudo apt-get install build-essential libpcre3 libpcre3-dev libtool automake autoconf libncurses-dev pkg-config python3-docutils -y

#install varnish modules
wget https://github.com/varnish/varnish-modules/archive/refs/tags/0.23.0.zip -O /tmp/varnish-modules.zip

unzip /tmp/varnish-modules.zip -d /tmp

cd /tmp/varnish-modules-0.23.0 && ./bootstrap && ./configure && make && sudo make install

rm -rf /tmp/varnish-modules.zip /tmp/varnish-modules-0.23.0



