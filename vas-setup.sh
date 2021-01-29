
apt update;
apt install gcc pkg-config libssh-gcrypt-dev libgnutls28-dev  libglib2.0-dev libpcap-dev libgpgme-dev bison libksba-dev libsnmp-dev libgcrypt20-dev redis-server git python-pip cmake;
sleep 5;
echo "pausing for apt";
apt install bison cmake gcc gcc-mingw-w64 heimdal-dev libgcrypt20-dev libglib2.0-dev libgnutls28-dev libgpgme-dev libhiredis-dev libksba-dev libmicrohttpd-dev git libpcap-dev libpopt-dev libsnmp-dev libsqlite3-dev libssh-gcrypt-dev xmltoman libxml2-dev perl-base pkg-config python3-paramiko python3-setuptools uuid-dev curl redis doxygen libical-dev python-polib gnutls-bin;
sleep 5;
echo "pausing for apt";
clear;
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -;
sleep .5;
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list;
apt install yarn ;
clear;

cd /tmp;
echo "packages installed, brining down the vas";
git clone https://github.com/greenbone/gvm-libs.git;
cd /tmp/gvm-libs;
cmake .;
make;
make install;
sleep 5;
echo "gvm-libs files have been installed";
clear;
cd /tmp;
git clone https://github.com/greenbone/openvas.git;
cd /tmp/openvas;
sleep .5;
cmake .;
make;
make install;
sleep 5;
echo "openvas scanner installed";
clear;


greenbone-nvt-sync;
cp redis-openvas.conf /etc/redis/;
chown redis:redis /etc/redis/redis-openvas.conf;
echo "db_address = /run/redis-openvas/redis.sock" > /etc/openvas/openvas.conf;
systemctl start redis-server@openvas.service;
