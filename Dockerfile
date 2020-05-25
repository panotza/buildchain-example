FROM alpine

RUN apk add --no-cache ca-certificates tzdata

WORKDIR /app

ADD server/server ./
ADD web/out ./public

EXPOSE 8080

ENTRYPOINT ["/app/server"]