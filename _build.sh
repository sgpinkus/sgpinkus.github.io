#!/bin/bash
eval "docker run \
  -it \
  --rm \
  -u $(id -u) \
  --network host \
  --workdir /home/build \
  -v $(readlink -f .):/home/build \
  -e HOME=/home/build \
  -e PWD=/home/build \
  ruby-jekyll \
  bash ./build.sh"
