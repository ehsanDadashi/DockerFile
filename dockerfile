# this image has 884MB size
FROM golang:1.21-bookworm

RUN mkdir -p /home/app
WORKDIR /home/app
COPY . /home/app
RUN go mod init main
RUN go build
CMD ["./main"]
