FROM webhippie/alpine:3.16
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=jenkins-job-builder
ENV JJB_VERSION=4.1.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install -U jenkins-job-builder==${JJB_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
