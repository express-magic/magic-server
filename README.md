magic-server
====

this is the starting point to get your own express-magic flowing.

getting started:
```bash
#first clone this repository from github:
git clone https://github.com/express-magic/magic-server
#cd to the hosts directory to install the magic-hosts
cd magic-server/hosts 
#install magic-localhost, change hosts/Makefile to load different hosts
make install
#back to the root folder
cd .. 
#if you do not have docker installed and are using ubuntu
make install 
#if you use a different linux just install docker yourself.
    
#build the base, express-magic and hosts docker containers
make all
#docker run the container
make run
#check container logs to verify it is running correctly:
make logs
#the last line of log output should tell you that express listens to port 5000.
#now open your browser and point it at http://localhost:80
```

