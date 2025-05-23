FROM debian:bookworm

ENV ONIONSHARE_VERSION=2.6.3
ENV PIPX_BIN_DIR=/usr/local/bin

RUN apt-get update && apt-get -yq --no-install-recommends install tor pipx

RUN pipx install onionshare-cli==$ONIONSHARE_VERSION

VOLUME ["/shared"]

ENTRYPOINT ["/usr/local/bin/onionshare-cli"]
CMD ["/shared"]
