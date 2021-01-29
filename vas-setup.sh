apt update;
apt-get install gcc pkg-config libssh-gcrypt-dev libgnutls28-dev  libglib2.0-dev libpcap-dev libgpgme-dev bison libksba-dev libsnmp-dev libgcrypt20-dev redis-server git python-pip cmake;
apt install bison cmake gcc gcc-mingw-w64 heimdal-dev libgcrypt20-dev libglib2.0-dev libgnutls28-dev libgpgme-dev libhiredis-dev libksba-dev libmicrohttpd-dev git libpcap-dev libpopt-dev libsnmp-dev libsqlite3-dev libssh-gcrypt-dev xmltoman libxml2-dev perl-base pkg-config python3-paramiko python3-setuptools uuid-dev curl redis doxygen libical-dev python-polib gnutls-bin;
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -;
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update;
apt install yarn;
cd home/;
git clone https://github.com/greenbone/openvas.git;
git clone https://github.com/greenbone/gvm-libs.git;
cd gvm-libs;
cmake .;
make;
make install;
cd ..;
cd openvas;
cmake .;
make;
make install;
