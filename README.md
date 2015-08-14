vertx-dockerfile
================

Creates a docker container w/ Java 8 and vert.x 2.1.x/3.0.0.

Run a verticle
--------------

Mount a host directory in the container that contains the verticle classes, jar files, javascript verticles, etc.
Then run your verticle:

    docker run -v ~/vertx-x3/vertx-examples/core-examples/src/main/js/io/vertx/example/core/http/simple:/usr/local/var/lib/vertx:rw --name "vertx-3.0.0" -p 8080:8080 -d jansolo/vertx:3.0.0 run server.js

For java verticles packed in jar files you might need to set the classpath with the -cp option.

Run a module in vert.x 2.1.x 
----------------------------

To run a module mount a host directory into the container. 
Create a `mods` directory in the mounted directory and put your vertx modules into the `mods` directory.

Here is an example command to start a module in the container:

    docker run -v ~/vertx:/usr/local/var/lib/vertx:rw --name "vertx.module.sample" -p 8080:8080 -d jansolo/vertx runmod vertx.domain~vertx.module~0.1-SNAPSHOT -conf conf.json