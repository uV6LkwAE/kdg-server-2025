# Goプログラムのビルド
FROM golang:1.21 AS builder

WORKDIR /app

COPY main.go .

RUN go build -ldflags="-s -w" -o hello main.go

# 実行用の軽量イメージ
FROM debian:bookworm-slim

WORKDIR /app

COPY --from=builder /app/hello .

CMD ["./hello"]
