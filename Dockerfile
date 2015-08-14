FROM java:8
MAINTAINER Jan Illetschko (jansolo)

VOLUME /usr/local/var/lib/vertx
WORKDIR /usr/local/var/lib/vertx

ADD vert.x-2.1.6.tar.gz /usr/local/share
RUN ln -s /usr/local/share/vert.x-2.1.6/bin/vertx /usr/local/bin/vertx
ENV VERTX_MODS /usr/local/var/lib/vertx/mods

ENTRYPOINT ["/usr/local/bin/vertx"] 
