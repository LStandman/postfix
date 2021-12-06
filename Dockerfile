FROM alpine:latest

RUN apk --no-cache add \
		postfix

COPY configure-instance.sh /usr/local/lib/
RUN sh /usr/local/lib/configure-instance.sh

EXPOSE 25
CMD ["sh", "-c",  \
  "queue_dir=$(/usr/sbin/postconf -o inet_interfaces= -hx queue_directory) \
  ;  cp /etc/hosts /etc/resolv.conf $queue_dir/etc/ \
  && /usr/sbin/postfix start-fg"]
