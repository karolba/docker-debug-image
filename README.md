# `baraniecki.eu/dbg`

A bleeding edge OCI/Docker image for debugging:
- Updated **daily**
- Based on the edge branch of Alpine Linux
- Included Alpine packages:
   - `bash`
   - `bind-tools`
   - `conntrack-tools`
   - `curl`
   - `doas`
   - `ethtool`
   - `htop`
   - `jq`
   - `git`
   - `ltrace`
   - `net-tools`
   - `ncdu`
   - `nmap`
   - `mtr`
   - `openssh-client`
   - `sqlite`
   - `strace`
   - `tcpdump`
   - `tcptraceroute`
   - `util-linux`
   - `vim`
   - `wget`
   - `yq`

## Usage

```bash
$ docker run -it baraniecki.eu/dbg
```

The only available tag is always `:latest`
