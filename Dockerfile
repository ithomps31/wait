FROM centos:stream9-minimal
# FROM registry.redhat.io/ubi9-minimal:latest

WORKDIR /app/wait

RUN microdnf update -y \
    && microdnf clean all \
    && rm -rf /var/cache/yum

USER 1001
COPY wait.sh wait.sh

CMD ["sh", "wait.sh"]
