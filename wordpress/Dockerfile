From debian:buster

RUN apt-get update -y
RUN apt-get install apt-transport-https lsb-release ca-certificates wget -y
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN apt-get install gnupg2 ca-certificates apt-transport-https software-properties-common -y
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
RUN apt-get update && apt-get install ca-certificates
RUN apt-get install gnupg2 -y
RUN wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
RUN apt-get update -y
RUN apt-get install libapache2-mod-fcgid php-fpm htop -y
RUN apt-get install php php-fpm php-pear php-cgi php-common php-mbstring php-zip php-net-socket php-gd php-xml-util php-mysql php-bcmath unzip wget git -y
RUN php -v
WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN cp -rf wordpress/* .
RUN rm -rf wordpress latest.zip
COPY www.conf /etc/php/8.2/fpm/pool.d/www.conf
#RUN cp wp-config-sample.php wp-config.php
RUN /etc/init.d/php8.2-fpm start
COPY wp-config-sample.php wp-config.php
EXPOSE 9000
#COPY ../content/wordpress /var/www/html
#RUN cd /var/www/html && wget https://wordpress.org/latest.zip && unzip latest.zip && cp wordpress/wp-config-sample.php wordpress/wp-config.php
#RUN cd /var/www/html && chown -R www-data:www-data wordpress
CMD ["php-fpm8.2", "-F"]
