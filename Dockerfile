FROM alpine:latest

RUN apk --no-cache add \
		postfix

COPY configure-instance.sh /usr/local/lib/
RUN sh /usr/local/lib/configure-instance.sh

EXPOSE 25
CMD ["sh", "-c", "/usr/sbin/postfix start-fg"]
