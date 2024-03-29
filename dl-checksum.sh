#!/usr/bin/env sh
set -e
MIRROR=https://www.apache.org/dist/storm

dl_ver() {
    local ver=$1
    local url=$MIRROR/apache-storm-${ver}/apache-storm-${ver}.tar.gz.sha512
    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSLf $url | tr '\n' ' ' | tr -s '[:blank:]' ' ' | sed -e 's/ //g' | awk -F ':' '{print $2}')
}

dl_ver ${1:-2.4.0}
