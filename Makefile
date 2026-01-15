push::
	docker buildx build -t cnk3x/caddy:2.10.2 -t cnk3x/caddy --push --platform linux/amd64,linux/arm64 .
