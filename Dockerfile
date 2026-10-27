FROM golang:1.27

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"

RUN go install github.com/spf13/cobra-cli@latest && \
    go install go.uber.org/mock/mockgen@latest

CMD ["tail", "-f", "/dev/null"]