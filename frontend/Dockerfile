FROM httpd:2.4

ENV BACKEND_URL=${BACKEND_URL}

COPY check_backend.sh /usr/local/bin/check_backend.sh
COPY index.html /usr/local/apache2/htdocs/
RUN apt-get update && apt-get install -y curl host && \
    chmod +x /usr/local/bin/check_backend.sh
RUN sed -i 's/Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf
EXPOSE 8080

CMD ["sh", "-c", "httpd-foreground & /usr/local/bin/check_backend.sh"]