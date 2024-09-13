#!/bin/bash -x

sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
task --version
