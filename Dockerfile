FROM oraclelinux:7-slim

RUN yum-config-manager --enable ol7_developer
RUN yum-config-manager --enable ol7_developer_EPEL
RUN yum -y install terraform python-oci-cli oci-utils