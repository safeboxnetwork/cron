#! /bin/sh

ENV=/root/.bashrc ash

file="/crontab";
{
echo "SHELL=/bin/sh
 * * * * * /cron-re-read.sh"
} > "$file";

cat /opt/cron/crontab.txt >> /crontab

crontab -l | cat /crontab |crontab -
