FROM golang:1.21-bookworm

RUN mkdir -p /home/app
WORKDIR /home/app
COPY ./main.go /home/app
RUN go build main -o webserver

CMD ["./webserver"]