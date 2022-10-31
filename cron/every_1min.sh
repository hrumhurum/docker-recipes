#!/bin/sh

# Terminate the script on a first error, disallow unbound variables.
set -eu

echo "Hello from cron task on $(date)"
