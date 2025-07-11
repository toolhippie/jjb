FROM ghcr.io/dockhippie/alpine:3.22
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=jenkins-job-builder
ENV JJB_VERSION=6.4.2

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U jenkins-job-builder==${JJB_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
