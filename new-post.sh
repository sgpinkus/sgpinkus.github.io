#!/bin/bash
cd `dirname $0`
[[ -z "$1" ]] && echo "Usage: $0 <file-name>" && exit 1
! echo "$1" | egrep "\.\w+$" && echo "<file-name> must include extension." && exit 1
editor _posts/`date +%F`-"$1"
