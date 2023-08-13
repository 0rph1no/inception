From debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get upgrade -y
COPY ./default /etc/nginx/sites-available
COPY ./content/index.html /var/www/html
COPY ./initializer.sh /usr/local/bin
RUN chmod 777 /usr/local/bin/initializer.sh
# RUN /usr/local/bin/initializer.sh
RUN mkdir -p /etc/encryption
COPY ./encryption /etc/encryption
#ENTRYPOINT [ "/usr/local/bin/initializer.sh"]
CMD ["nginx","-g", "daemon off;"]
#CMD ["service", "php7.3-fpm", "start"]
