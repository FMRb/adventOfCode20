#!/bin/bash

# Setup the day for the advent of calendar

if [ $# -eq 0 ]; then
    echo "Usage: $(basename "$0") <day-number>" >&2
    exit 1
fi

if [ ! -d .git ]; then
    echo "must be run from root of advent-of-code repository" >&2
    exit 1
fi

name="$(printf "day%02d" "$1")"
cargo new --bin "$name"
mkdir "$name/input"
