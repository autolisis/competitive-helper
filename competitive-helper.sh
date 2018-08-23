#!/usr/bin/env sh
# competitive-helper.sh
# Copyright (C) 2018 g <g@ABCL>
#
# Distributed under terms of the MIT license.

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

read -p "Enter problem name: " probName
mkdir -p "$probName"
cp "$MYDIR/tester" "$probName"
pushd .
cd "$probName"
echo "Enter test input and finally put an empty line"
# input=$(sed '/^\/\/$/q')
input=$(sed '/^$/q')
echo "$input"  > in

echo "Enter expected output and finally put an empty line"
output=$(sed '/^$/q')
echo "$output"  > out


echo "Start coding, compile binary to name ./prog"
echo "When ready, press ENTER to compile (make prog) and run tester"

while read line; do
    ./tester
done
