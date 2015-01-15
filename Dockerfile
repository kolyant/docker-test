FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -f -y vim curl wget build-essential python-software-properties
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.18.0/install.sh | bash
RUN source ~/.bashrc;
RUN nvm install v0.10.26
RUN nvm alias default 0.10.26
RUN nvm use default
RUN npm install

EXPOSE  8080
CMD ["node", "/index.js"]