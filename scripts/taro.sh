#!/usr/bin/env bash

set -e

# Taro runtime pkg get wrong entry path
file=packages/taro/node_modules/@tarojs/runtime/package.json

# Don't use alias due to unbuntu (CI) can't recognize.
if [ $(uname) == 'Darwin' ]
then
  sed -i '' 's/runtime\.esm/index/' $file
else
  sed -i 's/runtime\.esm/index/' $file
fi
