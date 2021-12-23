## PACKAGES

| Packages            | amd64 | arm64 | onecloud |
| :------------------ | :---: | :---: | :------: |
| Helloworld          |  ✔️   |  ✔️   |    ✔️    |
| openclash           |  ✔️   |  ✔️   |    ✔️    |
| UnblockNeteaseMusic |  ✔️   |  ✔️   |    ✔️    |
| 包管理工具 apk      |  ✔️   |  ✔️   |    ✔️    |
| 磁盘管理 diskman    |  ✔️   |  ✔️   |    ✔️    |
| 内网穿透 ddnsto     |  ✔️   |  ✔️   |    ✔️    |
| 广告过滤 ikoolproxy |  ✔️   |  ✔️   |    ✔️    |
| dockerman           |  ✔️   |       |          |

## MORE

- docker-compose

```sh
sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

apk update && apk add docker-compose
```
