# https://github.com/humbertosales/espruinohub-docker-rpi/blob/master/Dockerfile
FROM nodered/node-red:latest

MAINTAINER Zane Claes <zane@technicallywizardry.com>

USER root

# Install dependencies
# RUN apt-get -yqq update && \
#     apt-get -yqq --no-install-recommends install build-essential python-rpi.gpio && \
#     apt-get -yqq autoremove && \
#     apt-get -yqq clean && \
#     rm -rf /var/lib/apt/lists/* /var/cache/* /tmp/* /var/tmp/*

# RUN npm install && \
#     npm cache clean --force

RUN adduser node-red dialout

COPY docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh
CMD /usr/bin/docker-entrypoint.sh
