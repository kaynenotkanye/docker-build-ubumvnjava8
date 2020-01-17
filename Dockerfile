FROM ubuntu:18.04

RUN set -ex; \
    apt-get update; \
    apt-get -y install openjdk-8-jdk; \
    apt -y install maven; \
    echo done

RUN set -ex; \
    apt-get update; \
    apt-get -y install awscli; \
    echo done

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
