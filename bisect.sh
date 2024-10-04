#!/usr/bin/env bash

cargo --version
OUTPUT=$(cargo valgrind run --bin bin 2>&1)
echo "${OUTPUT}"
! echo "${OUTPUT}" | grep "Error leaked"
