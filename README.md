# Gentoo linux based cron implementation

Lightweight, simple cron implementation for scheduling jobs via cron solution.

It can be managed by editing crontab.txt using cron-like scripting methods. That means it needed to available for the runnning cron container via /crontab.txt path.

Once crontab.txt changed it's affected after 1 minute.

## Usage:

docker run --volume <host-path-to-crontab.txt>:/crontab.txt cron

