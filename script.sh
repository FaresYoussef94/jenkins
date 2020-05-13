#!/bin/bash

NAME=$1
SHOW=$2

if [ "$SHOW" = "true" ]; then
    echo "Hello, $NAME"
else
    echo "Hello with false paramter"
fi