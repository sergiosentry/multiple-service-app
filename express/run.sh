#!/bin/bash

# This is not a standalone script. It is called from ../deploy.sh that
# sets up the right environemnt variables and files for it.

npm install

function cleanup {
  stop.sh node $EXPRESS_PORT 
}
trap cleanup EXIT

node server.js
