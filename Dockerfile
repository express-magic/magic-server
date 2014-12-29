FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y git
RUN npm i -g supervisor
RUN git clone https://github.com/express-magic/magic-localhost ./server/hosts/localhost

ADD ./server /srv
RUN cd /srv; npm install
EXPOSE  80
CMD cd /srv; ./dev.sh
