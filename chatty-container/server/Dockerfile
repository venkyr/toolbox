FROM ubuntu-upstart:latest
RUN apt-get update
RUN apt-get install -y iptables
RUN apt-get install -y lsof
RUN apt-get install -y uuid-runtime
RUN apt-get install -y curl
COPY traffic.sh /tmp
