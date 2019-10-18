FROM ubuntu:18.04
MAINTAINER Bart Rozycki "bartlomiej.rozycki@impactsoft.pl"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install net-tools nginx curl git supervisor

COPY nginx.conf /etc/nginx/sites-available/default
COPY supervisord.conf /etc/supervisor/conf.d/nginx-web.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT sh /root/.docker/start.sh

WORKDIR /application

EXPOSE 80
EXPOSE 443

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/nginx-web.conf"]

