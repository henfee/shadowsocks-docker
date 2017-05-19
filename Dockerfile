# shadowsocks for docker

FROM alpine:latest
MAINTAINER Scofield Peng<penjianfeng@gmail.com>

RUN ["mkdir","/app"]
COPY ["./shadowsocks","/usr/bin/shadowsocks"]
RUN ["chmod","+x","/usr/bin/shadowsocks"]
WORKDIR "/app/shadowsocks"

ENTRYPOINT ["/usr/bin/shadowsocks"]
CMD ["-c","/app/shadowsocks/app.json"]