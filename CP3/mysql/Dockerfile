FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server

COPY ./db-sample/database.sh /database.sh

EXPOSE 3306

RUN echo "mysql:1507" | chpasswd

CMD ["mysqld_safe"]
