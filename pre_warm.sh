#!/bin/bash

set -x

ROOT="$(dirname $0)/var"

mkdir -pv "$ROOT"

fetch_intermediate() {
	if [ -z "$2" ];
	then
		wget -N -P "$ROOT" "$1"
	else
		wget -O "$2" "$1"
	fi
}

pushd "$ROOT"

sha256sum -c SHA256SUMS
