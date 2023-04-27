FROM golang:1.13-alpine AS builder

ENV GO111MODULE=off
ENV CGO_ENABLED=0

WORKDIR /go/src/github.com/openfaas/faas-idler

COPY . .

RUN go build -a -installsuffix cgo -o faas-idler .

FROM alpine:3.11

RUN addgroup -S app && adduser -S -g app app
RUN mkdir -p /home/app

WORKDIR /home/app

COPY --from=builder /go/src/github.com/openfaas/faas-idler/faas-idler /home/app/

RUN chown -R app /home/app
USER app

EXPOSE 8080
VOLUME /tmp

ENTRYPOINT ["/home/app/faas-idler"]
