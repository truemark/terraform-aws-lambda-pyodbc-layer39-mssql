#!/usr/bin/env bash

set -euo pipefail
cd "$(dirname "${0}")" || exit
if [[ ! -f pyodbc_layer39.zip ]]; then
  docker build -t pyodbc-39 .
  docker run --rm --entrypoint /bin/bash -v $PWD:/local pyodbc-39 -c "cp -R /opt /local"
  cd opt
  zip -r ../pyodbc_layer39.zip ./*
fi
