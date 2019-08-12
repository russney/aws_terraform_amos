#sudo su -
useradd -u 2000 xcart_user
mkdir /x
chown amos_user /x
cp boot2.sh ~amos_user
chown amos_user ~amos_user/boot2.sh
su - amos_user
