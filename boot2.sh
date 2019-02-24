curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh > install.sh
bash install.sh
. ~/.nvm/nvm.sh
cd /amos
nvm install 11.10.0
node -e "console.log('Running Node.js ' + process.version)"
npm i express-generator
npm install
export PATH=$PATH:/amos/node_modules/.bin
express
npm i
npm start
# open port 3000 in AWS security group
