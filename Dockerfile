FROM ubuntu:xenial

RUN set -x && \
    apt update -y -qq && \
    apt upgrade -y -qq --no-install-recommends && \
    apt install -y -qq \
    build-essential \
    gdb \
    gcc-multilib \
    gdb-multiarch \
    tmux \
    qemu \
    strace

CMD ["/bin/bash"]

# To build
# docker build . -t uqemu

# To run
# docker run --rm -it -v $PWD:$PWD -w $PWD uqemu make qemu-nox
