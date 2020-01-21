FROM debian:buster

ENV ONIONSHARE_VERSION=v2.2

RUN apt-get update && apt-get -yq install python3-flask python3-stem python3-pyqt5 python3-crypto python3-socks python-nautilus tor obfs4proxy python3-pytest build-essential fakeroot python3-all python3-stdeb dh-python git python3-pip

WORKDIR /app

RUN git clone https://github.com/micahflee/onionshare.git && cd onionshare && git checkout $ONIONSHARE_VERSION && pip3 install -r install/requirements.txt
VOLUME ["/shared"]

ENTRYPOINT ["/app/onionshare/dev_scripts/onionshare"]
CMD ["/shared"]
