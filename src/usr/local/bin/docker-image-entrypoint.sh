#!/usr/bin/env bash

isCommand() {
  for cmd in \
    "add" \
    "new" \
    "generate" \
    "update" \
    "build" \
    "serve" \
    "test" \
    "e2e" \
    "lint" \
    "xi18n" \
    "run" \
    "eject" \
    "config" \
    "help" \
    "version" \
    "doc"
  do
    if [ -z "${cmd#"$1"}" ]; then
      return 0
    fi
  done

  return 1
}

# check if the first argument passed in looks like a flag
if [ "$(printf %c "$1")" = '-' ]; then
  set -- /sbin/tini -- ng "$@"
# check if the first argument passed in is ng
elif [ "$1" = 'ng' ]; then
  set -- /sbin/tini -- "$@"
# check if the first argument passed in matches a known command
elif isCommand "$1"; then
  set -- /sbin/tini -- ng "$@"
fi

exec "$@"
