FROM ubuntu:18.04
MAINTAINER Bart Rozycki "bartlomiej.rozycki@impactsoft.pl"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install net-tools nginx curl git supervisor

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
RUN export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
RUN nvm install node

COPY nginx.conf /etc/nginx/sites-available/default
COPY supervisord.conf /etc/supervisor/conf.d/nginx-web.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT sh /root/.docker/start.sh

WORKDIR /application

EXPOSE 80

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/nginx-web.conf"]

