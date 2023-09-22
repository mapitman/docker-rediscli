FROM alpine:3.18
ARG VCS_REF
ARG BUILD_DATE
MAINTAINER Mark Pitman <mark.pitman@gmail.com>
RUN apk --update add redis
LABEL   org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.vcs-ref=$VCS_REF\
        org.label-schema.vcs-url="https://github.com/mapitman/docker-rediscli"
ENTRYPOINT ["redis-cli"]
