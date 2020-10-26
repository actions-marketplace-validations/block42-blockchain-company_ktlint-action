#!/bin/sh
set -e
echo "Formatting $GITHUB_REPOSITORY"
sh -c "ktlint -F $GITHUB_WORKSPACE $*"
