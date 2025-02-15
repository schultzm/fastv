FROM alpine:latest

RUN apk add make git g++ zlib-dev bash
RUN git clone https://github.com/OpenGene/fastv.git

WORKDIR fastv/

RUN make
RUN make install

ENTRYPOINT ["fastv"]
