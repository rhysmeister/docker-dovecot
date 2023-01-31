FROM registry.access.redhat.com/ubi8/ubi-init

COPY files/dovecot.repo /etc/yum.repos.d/
COPY files/epel.repo /etc/yum.repos.d/
COPY files/clucene-core-*.rpm /root

RUN dnf makecache && dnf update -y && dnf install /root/clucene-core-*.rpm -y && dnf install dovecot -y && systemctl enable dovecot