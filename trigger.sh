#!/bin/bash
commands=("gcc" "clang" "make")

for c in ${commands[@]}; do
	if ! $c --version > /dev/null; then
		sudo apt install $c
	fi
done

chmod u+x cmpl
cp ./cmpl /usr/bin
