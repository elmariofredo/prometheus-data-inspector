FROM ubuntu:groovy-20201022.1

WORKDIR /data

ENTRYPOINT [ "/entrypoint.sh" ]


RUN apt-get update && \
      apt-get install --no-install-recommends -y curl=7.68.0-1ubuntu4 && \
      rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /
