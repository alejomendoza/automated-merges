#!/bin/sh

export GITHUB_TOKEN=${RELEASE_TOKEN:-$GITHUB_TOKEN}

git checkout github-actions-test/master
git merge github-actions-test/web-release
git push
git checkout github-actions/web-staging
git merge github-actions-test/master
git push