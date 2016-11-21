FROM alpine:3.4

ENV ZNC_VERSION=1.6.3
ENV ZNC_CHECKSUM="631c46de76fe601a41ef7676bc974958e9a302b72b25fc92b4a603a25d89b827  znc-$ZNC_VERSION.tar.gz"

WORKDIR /opt/
RUN apk update && \
    apk add znc znc-extra znc-modperl znc-modpython znc-modtcl ca-certificates && \
    apk add autoconf automake gettext-dev g++ make openssl-dev pkgconfig wget zlib-dev && \
    wget http://znc.in/releases/znc-"$ZNC_VERSION".tar.gz && \
    echo "$ZNC_CHECKSUM" > /tmp/znc.sig && \
    cat /tmp/znc.sig && \
    sha256sum znc-"$ZNC_VERSION".tar.gz && \
    sha256sum -c /tmp/znc.sig && \
    apk del autoconf automake gettext-dev g++ make openssl-dev pkgconfig wget zlib-dev
