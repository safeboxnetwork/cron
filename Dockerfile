FROM cron
MAINTAINER gyurix
COPY . /
ENTRYPOINT ["/entrypoint.sh"]
