FROM ubuntu:18.04

RUN apt-get update -qq \
 && apt-get install -y wget openfoam=4.1+dfsg1-2 \
 && wget -qO - http://dl.openfoam.org/source/4-1 |tar xvfz - -C / --strip-components=1 --wildcards --no-anchored '*/bin/*'
