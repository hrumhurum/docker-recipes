# Docker Cron Sample

## Overview
The cron command-line utility is a job scheduler for Unix operating systems.
It allows you to run tasks automatically based on a set schedule.

While cron itself is straightforward to use, setting it up inside a Docker container can sometimes be tricky — unless you have a working example to guide you.
This project shows you how to install, configure, and run cron inside a Docker image.

## Verifying It's Working

To check that cron is running correctly, look at the log file located at `/app/var/log/cron.log`.
You should see a new line added roughly every minute.

The sample app includes a web interface with a link that lets you view this log file easily.

