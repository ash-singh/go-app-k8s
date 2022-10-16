FROM golang:1.19-alpine

COPY ./go.mod /app/

WORKDIR /app/
RUN go mod download

COPY . ./
RUN CGO_ENABLED=0 go build

EXPOSE 8080
CMD ["./go-app-k8s"]