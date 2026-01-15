FROM busybox:latest
COPY /dist/caddy /usr/bin/caddy
ENV TZ=Asia/Shanghai XDG_DATA_HOME=/ XDG_CONFIG_HOME=/
VOLUME [ "/caddy" ]
CMD [ "/usr/bin/caddy", "run", "-w" ]

LABEL org.opencontainers.image.authors=cnk3x
LABEL org.opencontainers.image.source=https://github.com/cnk3x/docker-caddy
