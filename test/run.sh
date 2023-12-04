#!/bin/bash
set -euo pipefail

cd "$(dirname -- "$0")"

MODE=${1:-"test"}

ctags --quiet --options=NONE --options=../solidity.ctags -f test.tags test.sol

case $MODE in
promote)
    cp test.tags tags
    ;;
test)
    ;;
*)
    echo "Usage: $0 (test|promote)"
    exit 1
    ;;
esac

diff tags test.tags
