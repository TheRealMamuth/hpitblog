FROM php:apache-stretch
ADD https://github.com/picocms/Pico/releases/download/v2.0.4/pico-release-v2.0.4.tar.gz /var/www/html
RUN cd /var/www/html && tar -xzf pico-release-v2.0.4.tar.gz && rm pico-release-v2.0.4.tar.gz
EXPOSE 80
CMD apachectl -D FOREGROUND
