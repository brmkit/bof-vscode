FROM debian:bookworm-slim

# install bofs requrements and useful tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    git \
    make \
    gcc \
    g++ \
    mingw-w64 \
    binutils-mingw-w64 \
    nasm \
    vim \
    nano \
    ca-certificates \
    python3 \
    python3-pip \
    python3-venv \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


COPY .devcontainer/helper.sh /root/.helper.sh
RUN echo '\n[ -f ~/.helper.sh ] && source ~/.helper.sh' >> /root/.bashrc
