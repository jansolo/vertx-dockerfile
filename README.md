vertx-dockerfile
================

Creates a docker container w/ Java 8 and vert.x 2.1.x.

To run a module mount a host directory into the container. 
Create a `mods` directory in the mounted directory and put your vertx modules into the `mods` directory.

Here is an example command to start a module in the container:

    sudo docker run -v ~/vertx:/usr/local/var/lib/vertx:rw --name "vertx.module" -p 8080:8080 -d jansolo/vertx runmod vertx.domain~vertx.module~0.1-SNAPSHOT -conf conf.json
