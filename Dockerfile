FROM    centos:centos6

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm

# Bundle app source
COPY . /var/www/docker-test/
# Install app dependencies
RUN cd /var/www/docker-test; npm install

EXPOSE  8080
CMD ["node", "/var/www/docker-test/server.js"]