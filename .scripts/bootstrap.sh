#!/usr/bin/env bash
docker run -v `pwd`:/usr/src/app -it --rm node:8 /bin/bash -c "npm install --global gatsby-cli; gatsby new gatsby-site; cp -a /gatsby-site/. /usr/src/app/"