# Base the ansible-rulebook image on fedora

#FROM registry.access.redhat.com/ansible-tower-38/ansible-runner-rhel7:1.4.9-6.1679307213
#FROM registry.redhat.io/ansible-tower-38/ansible-runner-rhel7:1.4.9-6.1679307213
#FROM registry.redhat.io/rhscl/python-38-rhel7@sha256:a933d5c2d0c3002d9c8af6ada1f0c5f83bc2de71eac4764fc659d3d54139ef29
FROM registry.redhat.io/ubi9/openjdk-17:1.15

WORKDIR /opt/app-root/src/

USER root

RUN microdnf --assumeyes install python3-pip

#RUN export JAVA_HOME=/usr/lib/jvm/jre-17-openjdk && \
#    pip3 install ansible-rulebook
#RUN yum --assumeyes install java-17-openjdk && \
#    export JAVA_HOME=/usr/lib/jvm/jre-17-openjdk

USER 1001

RUN pip3 install ansible ansible-runner ansible-rulebook


