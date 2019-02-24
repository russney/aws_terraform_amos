#sudo su -
cd /usr/local/src
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh > install.sh
bash install.sh
. ~/.nvm/nvm.sh
nvm install 11.10.0
node -e "console.log('Running Node.js ' + process.version)"
npm i express-generator
npm install
export PATH=$PATH:~/node_modules/.bin
mkdir /amos
cd /amos
express
npm i
npm start
# open port 3000 in AWS security group
