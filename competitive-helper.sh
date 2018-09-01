#!/usr/bin/env sh
# competitive-helper.sh
# Copyright (C) 2018 g <g@ABCL>
#
# Distributed under terms of the MIT license.

MYDIR="$HOME/.local/.repos/competitive-helper"

read -p "Enter problem name: " probName
mkdir -p "$probName"
cp "$MYDIR/tester" "$probName"
cp "$MYDIR/makefile" "$probName"
pushd .
cd "$probName"
echo "Enter test input and finally, an empty line"
# input=$(sed '/^\/\/$/q')
input=$(sed '/^$/q')
echo "$input"  > in

echo "Enter expected output and finally, an empty line"
output=$(sed '/^$/q')
echo "$output"  > out

echo "Start coding, compile binary to name ./prog"
echo "When ready, press ENTER to compile (make prog.out) and run tester"

while read line; do
    make prog.out
    ./tester
done
