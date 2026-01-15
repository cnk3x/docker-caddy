FROM caddy:builder

RUN xcaddy build \
    --with github.com/mholt/caddy-l4 \
    --with github.com/baldinof/caddy-supervisor \
    --with github.com/invzhi/caddy-docker-upstreams \
    --with github.com/greenpau/caddy-git \
    --with github.com/WingLim/caddy-webhook \
    --with magnax.ca/caddy/gopkg \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/alidns \
    --with github.com/caddy-dns/godaddy

FROM busybox:latest
COPY --from=0 /usr/bin/caddy /usr/bin/caddy
ENV TZ=Asia/Shanghai XDG_DATA_HOME=/ XDG_CONFIG_HOME=/
VOLUME [ "/caddy" ]
CMD [ "/usr/bin/caddy", "run", "-w" ]
