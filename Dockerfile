FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git g++ make apt-transport-https ca-certificates \
        zlib1g-dev ia32-libs && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/schultzm/fastv.git

WORKDIR fastv/

RUN make
RUN chmod +x fastv

COPY . .

ENTRYPOINT ["fastv"]
