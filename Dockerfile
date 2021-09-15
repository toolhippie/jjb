FROM webhippie/python:3.9
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=jenkins-job-builder
ENV JJB_VERSION=3.10.0

RUN apk update && \
  apk upgrade && \
  pip3 install -U jenkins-job-builder==${JJB_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
