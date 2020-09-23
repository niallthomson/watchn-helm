#!/bin/bash

set -e

watchn_repo=$1

if [ -z "$watchn_repo" ]; then
  echo "Must provide path to watch repo ./package.sh [path]"
  exit 1
fi

helm package $watchn_repo/src/catalog/chart

helm package $watchn_repo/src/cart/chart

helm package $watchn_repo/src/orders/chart

helm package $watchn_repo/src/ui/chart