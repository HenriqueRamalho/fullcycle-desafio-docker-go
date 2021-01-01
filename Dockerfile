FROM golang:1.14-alpine3.12

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./... \
    && go install -v ./...

CMD ["app"]