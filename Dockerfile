FROM java:8
MAINTAINER Jan Illetschko (jansolo)

VOLUME /usr/local/var/lib/vertx
WORKDIR /usr/local/var/lib/vertx

ADD vert.x-3.0.0-full.tar.gz /usr/local/share
RUN ln -s /usr/local/share/vert.x-3.0.0/bin/vertx /usr/local/bin/vertx

ENTRYPOINT ["/usr/local/bin/vertx"]