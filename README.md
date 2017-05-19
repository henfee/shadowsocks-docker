# shadowsocks client for docker

a shadowsocks client base docker, shadowsocks-go and alpine.

## How to use

1. docker pull the repo
```bash
docker pull scofieldpeng/shadowsocks-client:0.1
```
2. run it
```bash
docker run -d -p localport:dockerport --name ss-client scofieldpeng/shadowsocks-client:0.1 -s server_address -p server_port -k password -m aes-128-cfb -b local_address -l local_port
```
config detail look here [https://github.com/shadowsocks/shadowsocks-go](https://github.com/shadowsocks/shadowsocks-go)

3. check if run
```bash
docker logs ss-client
```

4. it works!


