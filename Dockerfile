FROM centos:centos6
MAINTAINER Niek Bartholomeus "niek.bartholomeus@gmail.com"

RUN yum install -y nano
RUN yum install -y postgresql-server postgresql

RUN echo "NETWORKING=yes" > /etc/sysconfig/network

VOLUME ["/var/lib/pgsql/data"]

EXPOSE 5432

ADD . /

CMD ["/source-files/start.sh"]