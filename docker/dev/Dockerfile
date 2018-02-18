FROM golang:1.10

# Download and install the latest release of dep
ADD https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 /usr/bin/dep
RUN chmod +x /usr/bin/dep
RUN go get github.com/pilu/fresh
# Copy the code from the host and compile it
WORKDIR ${GOPATH}/src/github.com/steffen25/go-docker-multi-stage
COPY Gopkg.toml Gopkg.lock ./
COPY docker/dev/init.sh /init.sh
RUN chmod +x /init.sh
RUN dep ensure --vendor-only
COPY . ./
CMD ["/init.sh"]