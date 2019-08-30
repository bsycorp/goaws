FROM golang:1.11 AS build-env
WORKDIR /src
ADD . /src
RUN make test linux

FROM bitnami/minideb:stretch
COPY ./app/conf/goaws.yaml /conf/
COPY --from=build-env /src/goaws_linux_amd64 /
CMD ["/goaws_linux_amd64"]