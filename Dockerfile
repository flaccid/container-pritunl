FROM debian:bullseye-slim
LABEL MAINTAINER="Chris Fordham <chris@fordham.id.au"
RUN  apt-get -y update && \
     apt-get -y install gnupg2 && \
     echo "deb http://repo.pritunl.com/stable/apt bullseye main" > /etc/apt/sources.list.d/pritunl.list && \
     apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A && \
     apt-get update && \
     apt-get install -y dirmngr curl procps iptables pritunl && \
     update-alternatives --set iptables /usr/sbin/iptables-legacy && \
     apt-get -y autoremove && \
     rm -rf /var/lib/apt/lists/*
EXPOSE 80/tcp 443/tcp
EXPOSE 1194/udp
COPY container-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/container-entrypoint.sh"]
CMD ["pritunl", "start"]
