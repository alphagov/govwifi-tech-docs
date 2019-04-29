#!/bin/bash

set -e -u -o pipefail

# Launches the docker daemon

source /docker-helpers.sh
start_docker
