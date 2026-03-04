FROM alpine:3.21
ARG VCS_REF
ARG BUILD_DATE

LABEL   maintainer="Mark Pitman <mark.pitman@gmail.com>" \
        org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.vcs-url="https://github.com/mapitman/docker-rediscli"

RUN apk update && apk add --no-cache redis

ENTRYPOINT ["redis-cli"]
