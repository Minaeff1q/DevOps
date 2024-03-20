FROM debian:latest

RUN apt-get update && apt-get install -y wget curl nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY ./html /var/www/html

EXPOSE 80
EXPOSE 443

CMD ["nginx"]