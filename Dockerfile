# Docker file for Development environment

FROM centos:centos6
MAINTAINER owlcamp

RUN mkdir /opt/mailbucket
ENV RBENV_ROOT /usr/local/rbenv
ENV PATH $RBENV_ROOT/bin:$PATH
RUN yum -y install bzip2 tar
ADD ruby-install.sh /usr/local/bin/ruby-install.sh
RUN chmod u+x /usr/local/bin/ruby-install.sh
RUN /usr/local/bin/ruby-install.sh
