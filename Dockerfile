FROM mozgiii/tftp
RUN apk add --no-cache ca-certificates openssl
ARG CODENAME=stable
RUN wget \
      "https://deb.debian.org/debian/dists/$CODENAME/main/installer-armhf/current/images/netboot/netboot.tar.gz" \
      -O- | tar -xz -C /srv/tftp -f-
