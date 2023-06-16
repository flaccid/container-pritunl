#!/bin/bash

if [ ! -z "$PRITUNL_MONGODB_URI" ]; then
  echo "set mongodb uri to $PRITUNL_MONGODB_URI"
  pritunl set-mongodb "$PRITUNL_MONGODB_URI"
fi

exec "$@"
