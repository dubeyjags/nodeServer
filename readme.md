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
ssh-keygen -t ed25519 -C "github-dubeyjags@gmail.com"
ssh-keygen -t rsa -b 4096 -C "ssh-dubeyjags@gmail.com"

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


# Automate the CICD 
Github Actions
Jenkins
Aws cloud Build
Circle CI
travis
GCP Cloud run

## configrations
Source
event
Steps


## GITHUBACTIONS
.github/workflows/deploy.yml
```yml
name: Deploy node with ExCloud

on:
  push:
    branches:
      - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Deploy to ExCloud
        uses: appleboy/ssh-action@v1.0.3
        with:
          host: 210.79.128.197
          username: ubuntu
          key: ${{ secrets.SSH_KEY }}
          port: 22
          script: |
            cd /home/ubuntu/nodeServer
            git pull
            npm install
            pm2 restart all
```

create another private-key at same folder
save it at /home/server/.ssh (vim>:wq;)
and add the private key to the github/actions/secret&varibales // update variable in the yml

## Docker
Dockerfile   // create operating syetm with server code image also docker should run
```Dockerfile
FROM node:24-alpine

COPY package*.json ./
COPY index.js index.js

RUN npm install

CMD [ "node", "index.js" ]
```
docker build -t excloud . // tag image with name (. means current folder)
docker run -p 3000:3000 excloud // define port where to run
docker image ls // check the image 
hub.docker // like github
  - create repo
  - get the name
  - docker build with repo name
  - docker push with name
  - verify on the hub.docker

### add step at cicd pipeline for code commite create image




