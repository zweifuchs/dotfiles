#!/bin/bash


set -ex

find -maxdepth 1 -name "*.$1" -print0 | sed -e s/.$1//g | xargs -0 mkdir          
find -maxdepth 1 -name "*.$1" -print0 | sed -e s/.$1//g | xargs -0I{} mv {}.$1 {}


