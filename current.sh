#!/usr/bin/env bash

VERSION=0.17.1
PKG_FILE=/tmp/instructlab.pkg

if ! command -v curl &> /dev/null
then
    echo "curl could not be found, please install curl"
    exit 1
fi

curl -o %{PKG_FILE} https://instructlab-packages.s3.us.cloud-object-storage.appdomain.cloud/InstructLab-${VERSION}.pkg
installer -pkg ${PKG_FILE} -target /
