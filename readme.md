CICD - continue in
npm init -y
npm i express
type module
node index.js

devops = mediator between devlopment and deployment code structure
basic
 - code to deploy
 - server machine (excloud, aws, DO, linode, hostingor)

# connect with ssh 
Instances is called is vertual machine
SSH - async encrpted to secure way to connect (secure shell) by using 
    private key for user
    public key for server

bash = 
ssh-keygen -t ed25519 -C "dubeyjags@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo $SHELL
which ssh-agent
cat ~/.ssh/id_ed25519.pub

server
    whoami
    ls
    ls -a (for /ssh folder)


bash
ssh ubunto@ip
pwd
whoami

# cooonect with github
git init
npx gitignore node
git commit -m "message"
git remote add origin path
git push


# ubuntu
ssh ubunto@ip
pwd
whoami
sudo apt update
git clone https://github.com/dubeyjags/nodeServer.git
cd nodeserver
install node by cmd from website for linux
npm start to run the server
npm start & to run the continues server

## PM2 process manager 2
npm install pm2 -g
pm2 start index.js
pm2 restart 0
pm2 stop 0

# server
allow ssh from anywhere port 22 // for commiting and getting update
add security for TCP protocol with 3000 port from anywhere


