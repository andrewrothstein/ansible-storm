#!/usr/bin/env sh
VER=2.0.0
URL=https://www.apache.org/dist/storm/apache-storm-${VER}/apache-storm-${VER}.tar.gz.sha512

printf "  # %s\n" $URL
printf "  '%s': sha512:%s\n" $VER `curl -sSL $URL | tr '\n' ' ' | tr -s '[:blank:]' ' ' | sed -e 's/ //g' | awk -F ':' '{print $2}'`

