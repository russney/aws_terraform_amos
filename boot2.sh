cd ~
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh > install.sh
bash install.sh
. ~/.nvm/nvm.sh
nvm install 11.10.0
node -e "console.log('Running Node.js ' + process.version)"
npm i -g express-generator
cd /amos
#export PATH=$PATH:/amos/node_modules/.bin
#express
git clone https://github.com/russney/amos_code.git
npm i
npm start
# open port 3000 in AWS security group
