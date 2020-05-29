FROM ubuntu:latest

MAINTAINER admin.got
ENV DEBIAN_FRONTEND=noninteractive
RUN	apt-get update && \
	apt-get upgrade -y && \
	apt install -y python3 \
COPY server.py /etc/
EXPOSE 80 81 443
CMD ["/sbin/python3"]
