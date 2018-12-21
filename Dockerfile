ARG BUILD_FROM
FROM $BUILD_FROM

COPY rootfs /

ENV LANG C.UTF-8

RUN apk add --update openvpn jq
RUN chmod a+x /bin/run.sh

CMD [ "/bin/run.sh" ]