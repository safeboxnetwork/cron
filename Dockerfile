FROM cron
MAINTAINER gyurix
RUN mkdir -p /opt/cron
COPY  entrypoint.sh /entrypoint.sh
COPY  cron-re-read.sh /cron-re-read.sh
COPY service /usr/local/bin/
ENTRYPOINT ["/entrypoint.sh"]
