FROM alpine:3.7

RUN apk update && apk upgrade && apk add --no-cache rsync && rm -rf /var/cache/apk/*

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["sh"]
