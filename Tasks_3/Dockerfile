FROM golang:1.7 as build
RUN mkdir -p /go/src/example
WORKDIR /go/src/example
ADD . /go/src/example
#RUN go get .
RUN go build

FROM debian:latest
RUN mkdir -p /service
WORKDIR /service
COPY --from=build /go/src/example /service/
EXPOSE 3535
CMD ./example


