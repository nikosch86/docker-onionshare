FROM debian:buster

ENV ONIONSHARE_VERSION=v2.3.1
ENV POETRY_VERSION=1.1.4

RUN apt-get update && apt-get -yq install python3-flask python3-stem python3-pyqt5 python3-crypto python3-socks python-nautilus tor obfs4proxy python3-pytest build-essential fakeroot python3-all python3-stdeb dh-python git python3-pip
RUN pip3 install poetry==$POETRY_VERSION

WORKDIR /app

RUN git clone https://github.com/micahflee/onionshare.git && cd onionshare && git checkout $ONIONSHARE_VERSION
RUN cd onionshare/cli && poetry install

VOLUME ["/shared"]

WORKDIR /app/onionshare/cli
ENTRYPOINT ["/usr/local/bin/poetry"]
CMD ["run", "onionshare-cli", "/shared"]
