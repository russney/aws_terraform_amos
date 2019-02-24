#sudo su -
useradd -u 2000 amos_user
mkdir /amos_code
chown amos_user /amos_code
cp boot2.sh ~amos_user
chown amos_user ~amos_user/boot2.sh
su - amos_user
