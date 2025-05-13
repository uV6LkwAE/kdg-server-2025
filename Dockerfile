# Ubuntu 24.04 をベースに使用
FROM ubuntu:24.04

# 環境変数（対話を抑制）
ENV DEBIAN_FRONTEND=noninteractive

# 必要なパッケージをインストール
RUN apt update && \
    apt install -y nginx && \
    apt clean

# ポート80を公開
EXPOSE 80

# nginx をフォアグラウンドで起動
CMD ["nginx", "-g", "daemon off;"]
