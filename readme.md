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