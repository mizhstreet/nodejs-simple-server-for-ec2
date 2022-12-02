sudo su --login

yum install git -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

. ~/.nvm/nvm.sh

nvm install 16.0.0

npm install -g pm2 

git clone https://github.com/mizhstreet/nodejs-simple-server-for-ec2.git

pm2 startup

pm2 start nodejs-simple-server-for-ec2/server/server.js

pm2 save