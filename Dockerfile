FROM alpine:latest

RUN apk add --no-cache bash git g++ make ca-certificates zlib1g-dev 

RUN git clone https://github.com/schultzm/fastv.git

WORKDIR fastv/

RUN make
RUN make install

ENTRYPOINT ["fastv"]
