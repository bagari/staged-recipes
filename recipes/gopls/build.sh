#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

cd gopls
go build -buildmode=pie -trimpath -o=${PREFIX}/bin/${PKG_NAME} -ldflags="-s -w"
go-licenses save . --save_path=../license-files --ignore golang.org/x/tools/gopls