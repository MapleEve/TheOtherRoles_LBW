#!/usr/bin/env bash
set -euo pipefail

mkdir -p output

# The normal build
dotnet build -c Release \
    -p:OutputPath=../output/without-submerged/

# 不编译潜水艇
# dotnet build -c Release \
#     -p:DefineConstants=SUBMERGED \
#     -p:OutputPath=../output/with-submerged/
