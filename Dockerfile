FROM alpine

LABEL maintainer="Jonathan LEI <xJonathan@outlook.com>"

RUN apk --no-cache add iptables

COPY ./sandbox-entry.sh /usr/local/bin/sandbox-entry.sh

ENTRYPOINT [ "sandbox-entry.sh" ]
