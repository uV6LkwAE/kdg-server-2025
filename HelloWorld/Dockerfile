# ビルドステージ
# Goのソースコードをコンパイルするための環境を準備
FROM golang:1.21-alpine AS builder

WORKDIR /app

# main.goをコンテナの/appにコピーする
COPY main.go .

# 実行ファイルを作る
RUN go build -ldflags="-s -w" -o helloworld main.go

# 実行ステージ
FROM alpine:latest

WORKDIR /app

# ビルドステージで作成した/app/helloworldをコピーする
COPY --from=builder /app/helloworld .

# コンテナが起動されたとき./helloworldを実行する
CMD ["./helloworld"]
