FROM centos:7.2.1511

# install nodejs
RUN yum install -y epel-release &&\
    rpm -ivh https://kojipkgs.fedoraproject.org/packages/http-parser/2.7.1/3.el7/x86_64/http-parser-2.7.1-3.el7.x86_64.rpm &&\
    curl -sL https://rpm.nodesource.com/setup_8.x | bash - &&\
    yum -y install nodejs openssl git bzip2 g++ make gcc-c++ python &&\
    npm set registry https://registry.npm.taobao.org &&\
    npm set disturl https://npm.taobao.org/dist &&\
    npm cache clean --force &&\
    yum clean all

# setup environments
ENV HOME /home/node
ENV USER node
WORKDIR ${HOME}
COPY config ${HOME}

# install vuejs basic plugins and tools
RUN npm install -g --silent vue &&\
    npm install -g --silent @vue/cli &&\
    npm install -g --silent vuex &&\
    npm install -g --silent vue-router &&\
    npm install

CMD ["/usr/sbin/init"]
