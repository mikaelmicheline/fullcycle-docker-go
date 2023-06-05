FROM golang:1.20.4 AS builder

WORKDIR /usr/src/app

COPY . .

RUN go mod init fullCycleMessage && \ 
    go build app.go 

FROM scratch

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app .

ENTRYPOINT ["./app"]