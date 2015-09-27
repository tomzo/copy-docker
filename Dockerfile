FROM phusion/baseimage:0.9.17

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y wget
RUN cd /tmp && wget --no-check-certificate https://copy.com/install/linux/Copy.tgz
RUN tar xf /tmp/Copy.tgz -C /opt/
RUN mkdir /etc/service/copy
ADD run /etc/service/copy/run

VOLUME /copy
ENV COPY_USERNAME ''
ENV COPY_PASSWORD ''

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
