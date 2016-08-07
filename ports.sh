#!/bin/sh

__ports_usage() {
  cat <<EOF
NAME:
  ports - tool to easily see what's happening on your computer's ports
USAGE:
  ports [options]
OPTIONS:
  ls              list all open ports and the processes running in them
  show <port>     show what process is running on a given port
  kill <port>     kill whatever process is running in the given port (kill -9)
  --help          show this page
EOF
}

ports() {
  while test $# -gt 0; do
    case "$1" in
      ls)
        lsof -i -n -P
        return 0
        ;;
      show)
        lsof -i :"$2" | tail -n 1
        return 0
        ;;
      kill)
        ports show "$2" | awk '{ print $2; }' | xargs kill -9
        return 0
        ;;
      --help)
        __ports_usage
        return 0
      *)
        __ports_usage
        return 1
      esac
    done
}
