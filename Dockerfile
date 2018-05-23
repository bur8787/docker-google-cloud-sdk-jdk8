FROM google/cloud-sdk

WORKDIR /work
RUN echo "deb http://http.debian.net/debian jessie-backports main" | tee --append /etc/apt/sources.list.d/jessie-backports.list > /dev/null
RUN apt-get update
RUN apt-get install -t jessie-backports openjdk-8-jdk -y
RUN update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
