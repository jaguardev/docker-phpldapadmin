FROM alpine

RUN apk --no-cache add php5-apache2 phpldapadmin=1.2.3-r4

RUN mkdir /run/apache2/ && chmod 777 /run/apache2/

RUN rm -rf /var/www/localhost/htdocs && \
    ln -sf /usr/share/webapps/phpldapadmin/htdocs/ /var/www/localhost/
    
EXPOSE 80

CMD ["httpd","-D","FOREGROUND"]
