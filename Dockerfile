FROM centos
MAINTAINER sibadyutide1@gmail.com
RUN yum install net-tools -y &&\
    yum install ncurses curl -y &&\
    dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm &&\
    curl -sL https://rpm.nodesource.com/setup_14.x | bash - &&\
    rm -rf ~/.node-gyp &&\
    yum install nodejs -y &&\
    yum install gcc gcc-c++ make -y &&\
    npm install --global yarn -y &&\
    yarn global add wetty &&\
    dnf install sshpass -y &&\
    yum install sudo vim passwd -y &&\
    yum install openssl htop -y &&\
    yum clean packages -y &&\
    rm -rf /run/nologin &&\
    useradd centos  && echo "1234" | passwd centos --stdin &&\
    echo "centos   ALL=(ALL)   NOPASSWD: ALL" >>/etc/sudoers 

EXPOSE 3000 22
CMD /usr/local/bin/wetty -b --title "centos terminal" -p 3000     
    
    
    

    

