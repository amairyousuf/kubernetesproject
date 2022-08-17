FROM centos:latest
MAINTAINER amairyousuf@gmail.com
RUN yum install -y httpd \
 zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/dowanload/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury.zip/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND]
EXPOSE 80
