FROM alpine:3.7

RUN apk update && apk upgrade && apk add --no-cache rsync openssh && rm -rf /var/cache/apk/*

#RUN addgroup -S user -g 1000  && adduser -S user -G user -u 1000
#USER user

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["sh"]
