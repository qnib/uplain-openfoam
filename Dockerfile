FROM ubuntu:18.04

RUN apt-get update -qq \
 && apt-get install -y wget openfoam=4.1+dfsg1-2 \
 && mkdir -p /usr/openfoam/ \
 && wget -qO - http://dl.openfoam.org/source/4-1 |tar xvfz - -C /usr/openfoam/ --strip-components=1 --wildcards --no-anchored '*/bin/*'
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/openfoam/bin:/usr/openfoam/bin/tools
