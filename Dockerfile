FROM debian:stable-slim

LABEL maintainer="redhairedshanks"
LABEL purpose="Minimal debug tools image for Kubernetes pods"

# Install common network debug tools
RUN apt-get update && apt-get install -y \
    iputils-ping \
    net-tools \
    dnsutils \
    curl \
    telnet \
    traceroute \
    procps \
    tcpdump \
    bash \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]

