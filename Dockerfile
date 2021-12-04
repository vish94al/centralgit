FROM centos:latest
MAINTAINER vbharti@dizvik.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/corso.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip corso.zip
RUN cp -rvf corso/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
