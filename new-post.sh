#!/bin/bash
cd `dirname $0`
[[ -z "$1" ]] && echo "Usage: $0 <title>" && exit 1
! echo "$1" | egrep "\.\w+$" && echo "<title> must include extentsion." && exit 1
editor _posts/`date +%F`-"$1"
