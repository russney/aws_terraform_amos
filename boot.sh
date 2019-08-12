#sudo su -
yum install httpd
wget http://mysql.mirrors.pair.com/Downloads/MySQL-5.7/mysql-5.7.25.tar.gz
useradd -u 2000 xcart_user
mkdir /x
chown xcart_user /x
cp boot2.sh ~xcart_user
chown xcart_user ~xcart_user/boot2.sh
su - xcart_user
