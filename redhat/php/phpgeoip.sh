wget https://github.com/shootsoft/repo/raw/master/redhat/common/ip/GeoIP-1.5.1-5.el6.x86_64.rpm
wget https://github.com/shootsoft/repo/raw/master/redhat/common/ip/GeoIP-devel-1.5.1-5.el6.x86_64.rpm
sudo rpm -i --force GeoIP-1.5.1-5.el6.x86_64.rpm
sudo rpm -i --force GeoIP-devel-1.5.1-5.el6.x86_64.rpm

wget https://github.com/shootsoft/repo/raw/master/redhat/common/ip/GeoLiteCity.dat
wget https://github.com/shootsoft/repo/raw/master/redhat/common/ip/GeoLiteCountry.dat 

sudo cp -f GeoLiteCity.dat /usr/share/GeoIP/GeoLiteCity.dat
sudo cp -f GeoLiteCountry.dat usr/share/GeoIP/GeoLiteCountry.dat

wget http://pecl.php.net/get/geoip-1.0.8.tgz
tar zxf geoip-1.0.8.tgz
cd geoip-1.0.8
phpize
./configure
make 
sudo make install
