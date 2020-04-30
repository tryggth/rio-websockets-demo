FROM golang:1.14.2-alpine3.11
RUN ["mkdir", "-p", "/server"]
COPY * /server/
WORKDIR /server
RUN ["go", "build", "-o", "demo"]
CMD ["./demo"]
