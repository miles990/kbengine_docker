FROM centos:7

MAINTAINER AlexLee <alexlee7171@gmail.com>

# Upgrading system and install wget package
RUN yum -y upgrade && \
	yum -y install wget unzip gcc gcc-c++ automake autoconf libtool make

# Installing MySQL and required enviroment
RUN yum -y install openssl-devel mysql mysql-server mysql-devel


# Download KBEngine
RUN wget https://github.com/kbengine/kbengine/archive/v0.8.2.zip && \
	unzip v0.8.2.zip && \
	rm v0.8.2.zip && \
	mv kbengine-0.8.2 kbengine

WORKDIR /kbengine/kbe/src

RUN chmod -R 755 . && \
	make

CMD ["/bin/sh"]