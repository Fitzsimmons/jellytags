#!/bin/bash

set -x

if [[ -f .env ]]; then
  set -o allexport
  source .env
  set +o allexport
fi

sed -i "s|__JELLYFIN_URL__|${VITE_JELLYFIN_URL}|g" dist/assets/index.js
sed -i "s|__JELLYFIN_TOKEN__|${VITE_JELLYFIN_TOKEN}|g" dist/assets/index.js
