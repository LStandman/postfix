FROM alpine:latest

RUN apk --no-cache add \
		postfix

COPY configure-instance.sh /usr/local/lib/
RUN chmod ug+x /usr/local/lib/configure-instance.sh

EXPOSE 25
CMD ["sh", "-c", "/usr/local/lib/configure-instance.sh && /usr/sbin/postfix start-fg"]
