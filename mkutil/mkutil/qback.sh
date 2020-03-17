#!/usr/bin/env bash

set -e

export NOW=$(date +%Y-%m-%d--%H-%M)

if [ ! -d $1 ]; then
	echo "$1 does not exists"
	exit 0
fi
if [ -d $1.bak/$NOW ]; then
	echo "$1 please wait a minute unitl next backup"
	exit 0
fi


if [ ! -d $1.bak ]; then
	mkdir $1.bak
fi
if [ ! -d $1.bak/$NOW ]; then
	mkdir $1.bak/$NOW
fi

cp -rp $1 $1.bak/$NOW/












