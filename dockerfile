FROM golang:1.21-bookworm as builder

RUN mkdir -p /home/app
WORKDIR /home/app
COPY . /home/app
RUN go mod init main
RUN CGO_ENABLED=0 go build

FROM alpine:3.20
WORKDIR /app
COPY --from=builder /home/app /app
CMD ["/app/main"]
