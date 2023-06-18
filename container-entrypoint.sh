#!/bin/bash

if [ -e /opt/pritunl/etc/pritunl.conf ]; then 
  echo "use /opt/pritunl/etc/pritunl.conf"
  cp -vf /opt/pritunl/etc/pritunl.conf /etc/pritunl.conf
fi

if [ ! -z "$PRITUNL_MONGODB_URI" ]; then
  echo "set mongodb uri to [redacted]"
  pritunl set-mongodb "$PRITUNL_MONGODB_URI"
fi

exec "$@"
