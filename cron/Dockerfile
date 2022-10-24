FROM ubuntu:22.04 AS base

###############################################################################
# Prerequisites
###############################################################################

FROM base AS prerequisites
RUN apt-get update

# Install basic tools
RUN apt-get install -y sudo
RUN apt-get install -y curl
RUN apt-get install -y unzip

# Install cron
RUN apt-get install -y cron

RUN apt-get install -y mc

# Install Caddy (web server)
RUN apt-get install -y debian-keyring debian-archive-keyring apt-transport-https
RUN curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
RUN curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
RUN sudo apt-get update
RUN sudo apt-get install -y caddy

###############################################################################
# Publish
###############################################################################

FROM prerequisites AS publish

EXPOSE 8080

ENV HOME=/root

COPY etc/crontab /app/etc/crontab
COPY every_1min.sh /app/every_1min.sh

COPY etc/caddy /app/etc/caddy
COPY www /app/www

COPY run.sh /app/run.sh

###############################################################################
# Run
###############################################################################

FROM publish AS run

WORKDIR /app
CMD ./run.sh
