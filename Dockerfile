FROM alpine:latest

RUN apk --no-cache add \
		postfix

COPY configure-instance.sh /usr/local/lib/

EXPOSE 25
CMD ["sh", "-c", "sh /usr/local/lib/configure-instance.sh && /usr/sbin/postfix start-fg"]
