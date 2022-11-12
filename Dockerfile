FROM ubuntu
RUN apt update
RUN apt install apache2
COPY ./index.html /var/www/html/
COPY ./images/ /var/www/html/
ENTRYPOINT ["apachectl", "-D", "FOEGROUND"]