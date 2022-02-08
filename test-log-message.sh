#!/usr/bin/env bash
set -euxo pipefail
docker run --rm --log-driver=fluentd --log-opt tag="docker.{{.ID}}" ubuntu echo "$*"