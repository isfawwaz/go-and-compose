FROM golang:1.16 as base

FROM base as dev

RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

RUN export GO111MODULE="auto"

WORKDIR /opt/app/api
CMD ["air"]
