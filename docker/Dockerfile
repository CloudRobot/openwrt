FROM alpine:latest AS builder
COPY . .
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --update --no-cache tar gzip \
    && target_arch=$(cat /etc/apk/arch | sed "{s/aarch64/arm64/; s/armv7/arm/}") \
    && mkdir /out \
    && tar xzvf ${target_arch}.rootfs.tar.gz -C /out
COPY banner /out/etc/banner


FROM scratch
LABEL maintainer="xtoys <echoless@yeah.net>"
COPY --from=builder /out /
ENTRYPOINT  ["/sbin/init"]