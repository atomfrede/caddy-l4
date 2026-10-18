FROM caddy:2.11-builder AS caddy-builder

RUN xcaddy build --with github.com/mholt/caddy-l4

FROM caddy:2.11

COPY --from=caddy-builder /usr/bin/caddy /usr/bin/caddy