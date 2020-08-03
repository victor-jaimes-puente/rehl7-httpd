FROM victorjaimespuente/rehl7-httpd:2

RUN yum -y update
RUN yum -y install httpd
RUN yum -y install git 
RUN yum -y update
RUN git clone 
RUN rm -f /var/www/html/index.html
RUN cp /centos-httpd/index.html /var/www/html/index.html


EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D" , "FOREGROUND"]



# docker run -d -p 80:80 --name httpdvjp1 httpd-2 

# docker run -p 80:80 httpd-2
