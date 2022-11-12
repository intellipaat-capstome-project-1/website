FROM ubuntu
RUN apt update
RUN apt install apache2 -y
COPY ./index.html /var/www/html/
COPY ./images/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]