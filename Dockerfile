FROM alpine:3.7

RUN apk update && apk upgrade && apk add --no-cache rsync openssh && rm -rf /var/cache/apk/*

RUN addgroup -S user && adduser -S user -G user
USER user

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["sh"]
