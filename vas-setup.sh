apt update;
cd ~;
mkdir tools;
read -p "Continuing in 5 Seconds...." -t 5;
apt install gcc pkg-config libssh-gcrypt-dev libgnutls28-dev  libglib2.0-dev libpcap-dev libgpgme-dev bison libksba-dev libsnmp-dev libgcrypt20-dev redis-server git python-pip cmake -y;
sleep .5;
apt install bison cmake gcc gcc-mingw-w64 heimdal-dev libgcrypt20-dev libglib2.0-dev libgnutls28-dev libgpgme-dev libhiredis-dev libksba-dev libmicrohttpd-dev git libpcap-dev libpopt-dev libsnmp-dev libsqlite3-dev libssh-gcrypt-dev xmltoman libxml2-dev perl-base pkg-config python3-paramiko python3-setuptools uuid-dev curl redis doxygen libical-dev python-polib gnutls-bin -y;
read -p "Continuing in 5 Seconds...." -t 5;
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -;
sleep .5;
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update;
read -r -p "Wait 5 seconds or press any key to continue immediately" -t 5 -n 1 -s
clear;
apt install yarn -y;
cd ~/tools/;
sleep .5;
clear;
echo "packages installed, brining down the vas"
read -r -p "Wait 5 seconds or press any key to continue immediately" -t 5 -n 1 -s
git clone https://github.com/greenbone/openvas.git;
git clone https://github.com/greenbone/gvm-libs.git;
cd gvm-libs;
#sleep .5;
#cmake .;
#make;
#make install;
#cd ..;
#sleep .5;
#cd openvas;
#cmake .;
#make;
#make install;
#sleep .5;
