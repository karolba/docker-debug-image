FROM public.ecr.aws/docker/library/alpine:edge

RUN <<-EOF
	apk add --no-cache --update \
		bash \
		bind-tools \
		conntrack-tools \
		curl \
		doas \
		ethtool \
		htop \
		jq \
		git \
		ltrace \
		net-tools \
		ncdu \
		nmap \
		mtr \
		openssh-client \
		sqlite \
		strace \
		tcpdump \
		tcptraceroute \
		util-linux \
		vim \
		wget \
		yq
EOF

# Prefetch GitHub's ssh fingerprints
RUN <<-EOF bash -eo pipefail
	curl https://api.github.com/meta | jq -r '.ssh_keys[]' >> /etc/ssh/ssh_known_hosts
EOF

