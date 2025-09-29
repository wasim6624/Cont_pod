FROM docker.io/centos/systemd:latest

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* 

RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install openssh-server -y

RUN yum install net-tools -y

RUN yum install httpd -y

RUN yum install firewalld -y

ENTRYPOINT [ "/bin/bash" ]

CMD ["service", "httpd", "start"] 
