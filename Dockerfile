FROM alpine:latest

RUN apk add bash \
  util-linux \
  python3 \
  git \
  make cmake \
  which \
  libnsl libaio \
  unzip \
  jq \
  diffutils \
  sudo \
  gcc

RUN python -m ensurepip --upgrade

RUN pip3 install -U pip setuptools

RUN pip3 install oci-cli \
  terraform-validate \
  python-hcl2

RUN apk add terraform --repository=https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config