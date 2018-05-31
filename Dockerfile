FROM golang:1.8

COPY . /go/src/go.mozilla.org/sops
WORKDIR /go/src/go.mozilla.org/sops

RUN CGO_ENALBED=1 go build -a -o /bin/sops ./cmd/sops
RUN apt-get update
RUN apt-get install -y vim python-pip emacs
RUN pip install awscli
ENV EDITOR vim