FROM alpine:latest
ARG curl_url
ARG curl_param

RUN apk add --no-cache curl

# Add crontab file in the cron directory
RUN echo "* * * * * /usr/bin/curl $curl_param $curl_url >/dev/null" > ./crontab
RUN echo "# Don't remove the empty line at the end of this file. It is required to run the cron job" >> ./crontab
RUN /usr/bin/crontab /crontab

# Run the command on container startup
CMD /usr/sbin/crond -f -l 8