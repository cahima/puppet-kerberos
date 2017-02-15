FROM alpine:latest
RUN apk add --update krb5-libs
RUN echo http://dl-4.alpinelinux.org/alpine/edge/testing/ >> /etc/apk/repositories
RUN apk update && apk add shadow ruby less bash && gem install puppet --no-rdoc --no-ri
