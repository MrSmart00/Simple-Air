FROM golang:1.15.0-alpine

WORKDIR /go/src

COPY . .

RUN apk add git && \
    go get -u github.com/cosmtrek/air

CMD ["air"]
