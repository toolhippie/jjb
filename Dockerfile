FROM ghcr.io/dockhippie/alpine:3.22@sha256:c5bd9014e136d50a0d82c511a4fcf52a2ef43c55d9d535de035870845d1a98be
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=jenkins-job-builder
ENV JJB_VERSION=6.4.3

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U jenkins-job-builder==${JJB_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
