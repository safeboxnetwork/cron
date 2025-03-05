FROM alpine
RUN apk --update add curl jq docker-cli
RUN mkdir -p /opt/cron && mkdir -p /usr/local/bin/
COPY  entrypoint.sh /entrypoint.sh
COPY  cron-re-read.sh /cron-re-read.sh
COPY service /usr/local/bin/
RUN chmod a+x /usr/local/bin/service 
RUN chmod a+x /*.sh 
ENTRYPOINT ["/entrypoint.sh"]
