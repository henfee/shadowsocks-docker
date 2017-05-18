# shadowsocks for docker

FROM alpine:latest
MAINTAINER Scofield Peng<penjianfeng@gmail.com>

RUN ["mkdir","/app"]
COPY ["./shadowsocks","/app/shadowsocks"]
RUN ["chmod","+x","/app/shadowsocks"]
WORKDIR ["/app/shadowsocks"]

ENTRYPOINT ["/app/shadowsocks"]
CMD ["-c","/app/shadowsocks/app.json"]