FROM registry.access.redhat.com/ubi7/ubi

RUN yum -y update

RUN subscription-manager register --username victor.jaimes.puente --password dapper123 
RUN subscription-manager subscribe

RUN yum -y update
RUN yum -y install httpd

RUN subscription-manager unregister 
COPY index.html /var/www/html/index.html

EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D" , "FOREGROUND"]



# docker run -d -p 80:80 --name httpdvjp1 httpd-2

# docker run -p 80:80 httpd-2

#  Secret: write secret in your local and use it as a variable, include git ignore for local file. 

