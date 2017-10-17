FROM hashicorp/packer:1.1.1

ENV ANSIBLE_VERSION=2.4

RUN apk --update add wget ca-certificates py2-pip python2-dev py2-cffi openssl-dev gcc make g++ tzdata dateutils && \
pip install jmespath pyOpenSSL awscli ansible==${ANSIBLE_VERSION}

ENTRYPOINT ["bin/packer"]
