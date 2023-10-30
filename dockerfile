FROM centos:latest
MAINTAINER rajveersinghrjpt.8@gmail.com
RUN yum install -y httpd \
     zip \
     unzip

ADD   https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip  ]/var/www/html
WORKDIR  /var/www/html
RUN unzip
RUN cp -rvf markups-kindle/*  .  
RUN rm -rf  --MACOSX makrups-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D","FOREGEOUND"]
EXPOSE 80

