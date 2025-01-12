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

# todo: is this a good idea?

## If the debugging image is ran erroneously as non-root, allow switching
#RUN  \
#	seq 1000 1999 | while read -r uid; do \
#		echo permit persist nopass $uid persist; \
#		echo permit persist nopass :$uid persist; \
#	done >> /etc/doas.d/everyone.conf

# Prefetch GitHub's known hosts
RUN <<-EOF bash -eo pipefail
	curl https://api.github.com/meta | jq -r '.ssh_keys[]' >> /etc/ssh/ssh_known_hosts
EOF

