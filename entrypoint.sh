#! /bin/sh

file="/crontab";
{
echo "SHELL=/bin/sh
 * * * * * /cron-re-read.sh"
} >> "$file";

crontab -l | cat /crontab |crontab -

crond -f
