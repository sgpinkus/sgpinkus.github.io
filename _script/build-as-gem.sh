#!/bin/bash
bundle install
cp -a `bundle info --path jekyll-bootstrap-structure`/{bower.json,posts} .
bower --allow-root install
bundle exec jekyll build -d public
