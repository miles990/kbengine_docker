FROM centos:7

MAINTAINER AlexLee <alexlee7171@gmail.com>

# Upgrading system and install build package
RUN yum -y upgrade && \
	yum -y install wget unzip gcc gcc-c++ automake autoconf libtool make openssl-devel

# Installing MariaDB(This is a open source project fork from MySQL) and required enviroment
RUN yum -y install mariadb-server mariadb


# Download KBEngine
RUN wget https://github.com/kbengine/kbengine/archive/v0.8.2.zip && \
	unzip v0.8.2.zip && \
	rm v0.8.2.zip && \
	mv kbengine-0.8.2 kbengine && \
	chmod -R 755 /kbengine

# Build source
WORKDIR /kbengine/kbe/src

RUN make

# Set execuate enviroment
WORKDIR /kbengine/assets

# Run server
CMD ["./start_server.sh"]