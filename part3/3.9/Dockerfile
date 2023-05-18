FROM alpine:3.13 AS builder

WORKDIR /usr/src/app

COPY . .

ENV CGO_ENABLED=0 

RUN apk add --no-cache go && go build && addgroup -S appgroup && adduser -S appuser -G appgroup && apk del go


FROM scratch

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/server /usr/src/app/

COPY --from=builder /etc/passwd /etc/passwd

EXPOSE 8080

USER appuser

ENTRYPOINT [ "./server" ]
