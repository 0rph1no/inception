FROM debian:buster

RUN chmod -R 777 /tmp
RUN chmod -R 777 /tmp/
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y
COPY setup.sh setup.sh
RUN chmod +x setup.sh
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/
#RUN chmod -R 777 /tmp/

#EXPOSE 3306
ENTRYPOINT ["sh","setup.sh"]
CMD ["mysqld"]
