#!/bin/bash -e

# Install deps
curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b $(go env GOPATH)/bin v1.42.1
export PATH=$PATH:$(go env GOPATH)/bin

# Run verify steps
make verify
