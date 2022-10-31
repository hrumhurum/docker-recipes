# Cron Sample for Docker

## Overview

The cron command-line utility is a job scheduler on Unix-like operating systems.
You can use it to run your tasks according to a schedule.
Cron is a relatively simple utility but configuring it for Docker can be a daunting task sometimes.
Unless you have a working sample at hand.

This ready-to-run sample demonstrates how to install, configure, and use `cron` command-line utility inside a Docker image.

## Let's Check It

To verify that `cron` is running, you should take a look at cron log file located at `/app/var/log/cron.log`.
It should have a new line appended every minute or so.
The web interface of the sample app allows you to access the log file by clicking a corresponding link.
