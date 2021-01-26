FROM debian:buster-slim

RUN apt-get update \
 && apt-get install -y rdfind \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/rdfind"]
