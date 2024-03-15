#!/bin/bash

REPO=$REPO
ACCESS_TOKEN=$TOKEN
RUNNER_VERSION="2.314.1"
DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt install -y --no-install-recommends curl jq build-essential libssl-dev libffi-dev python3 python3-venv python3-dev python3-pip

#REG_TOKEN=$(curl -X POST -H "Authorization: token ${ACCESS_TOKEN}" -H "Accept: application/vnd.github+json" https://api.github.com/repos/${REPO}/actions/runners/registration-token | jq .token --raw-output)

cd /home/docker/actions-runner

./config.sh --url https://github.com/${REPO} --token ${TOKEN}

 ./run.sh

cleanup() {
echo "Removing runner..." 
./config.sh remove --unattended --token ${REG_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM
