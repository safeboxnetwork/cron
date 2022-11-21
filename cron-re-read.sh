#! /bin/sh

file="/crontab";
{
echo "SHELL=/bin/sh
 * * * * * /cron-re-read.sh"
} > "$file";

cat /crontab.txt >> /crontab

crontab -l | cat /crontab |crontab -
