Docker
======

Random Docker info

* http://willware.blogspot.com/2013/11/whats-up-with-docker.html
* http://docs.docker.io/en/master/installation/ubuntulinux/
* http://docs.docker.io/en/master/use/basics/
* http://docs.docker.io/en/master/examples/python_web_app/#python-web-app
* http://stackoverflow.com/questions/17989306/

The best way to create a fresh image is with `docker build` and a Dockerfile.

* http://docs.docker.io/en/latest/use/builder/

Depending on how you set up docker, you might need to sudo these commands.

    docker build -t wware/zerobin .
    docker run -d -t wware/zerobin
