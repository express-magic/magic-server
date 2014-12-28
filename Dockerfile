FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y git
RUN npm i -g supervisor
RUN git clone https://github.com/jaeh/jaeh.at ./server/hosts/jaeh.at
RUN git clone https://github.com/jaeh/bwb.is ./server/hosts/bwb.is

ADD ./server /srv
RUN cd /srv; npm install
EXPOSE  5000
CMD cd /srv; ./dev.sh
