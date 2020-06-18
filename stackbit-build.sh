#!/usr/bin/env bash

set -e
set -o pipefail
set -v

initialGitHash=$(git rev-list --max-parents=0 HEAD)
node ./studio-build.js $initialGitHash &

curl -s -X POST https://api.stackbit.com/project/5eeac8245ad8d000194779cb/webhook/build/pull > /dev/null
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/5eeac8245ad8d000194779cb
curl -s -X POST https://api.stackbit.com/project/5eeac8245ad8d000194779cb/webhook/build/ssgbuild > /dev/null
gatsby build
wait

curl -s -X POST https://api.stackbit.com/project/5eeac8245ad8d000194779cb/webhook/build/publish > /dev/null
echo "Stackbit-build.sh finished build"
