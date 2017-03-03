FROM rabbitmq:3.6.6-management-alpine

RUN \
  apk --update add \
    coreutils curl xz "su-exec>=0.2" && \
  curl -sL -o /tmp/autocluster-0.6.1.tgz https://github.com/aweber/rabbitmq-autocluster/releases/download/0.6.1/autocluster-0.6.1.tgz && \
  cd /tmp/ && \
  tar xf /tmp/autocluster-0.6.1.tgz && \
  rm /tmp/autocluster-0.6.1.tgz && \
  cp /tmp/plugins/*  /usr/lib/rabbitmq/plugins && \
  rm -r /tmp/plugins && \
  apk --purge del curl tar gzip xz

RUN /usr/lib/rabbitmq/sbin/rabbitmq-plugins --offline enable autocluster

RUN \
    echo "AUTOCLUSTER_TYPE="