FROM golang:alpine
WORKDIR /build
COPY main.go .
RUN go mod init hello_from_Docker
RUN go mod tidy
RUN go build -o hello_from_Docker main.go
CMD ["./hello_from_Docker"]
