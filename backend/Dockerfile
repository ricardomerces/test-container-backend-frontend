FROM httpd:2.4
COPY index.html /usr/local/apache2/htdocs/
RUN sed -i 's/Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf
EXPOSE 8080