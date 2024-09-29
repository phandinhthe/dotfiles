#!/bin/sh
java --version | awk 'NR==1 {print "v"$2,$3,$4}'

