#!/usr/bin/env sh
set -e
MIRROR=https://www.apache.org/dist/storm

dl_ver() {
    local ver=$1
    local url=$MIRROR/apache-storm-${ver}/apache-storm-${ver}.tar.gz.sha512
    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSLf $url | awk '{ print $1}')
}

dl_ver ${1:-2.6.1}
