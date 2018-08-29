FROM alpine

# install packages
RUN apk update && apk add docker

# load files
ADD image /root/image
RUN \
  find /root/image -type f -name '*.sh' -exec chmod +x {} \; && \
  cp -r /root/image/* / && \
  rm -rf /root/image

ENTRYPOINT ["/entrypoint.sh"]
CMD ["cron", "46 */2 * * *"]
