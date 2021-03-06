#!/usr/bin/env bash

cd ${WATCH_DIRECTORY:=/home}


convert() {
  NEW_FILE=${1}.ctb

  test -f ${NEW_FILE} && return

  /usr/bin/uv3dp ${1} ${NEW_FILE}
}
export -f convert

while [ true ]; do
  find . -type f -mmin +1 -iname '*.sl1' -exec bash -c 'convert {}' \;

  sleep 30
done
