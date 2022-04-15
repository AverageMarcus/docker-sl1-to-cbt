FROM golang:1.13 AS UV3DP_BUILDER
  RUN mkdir /app && \
    git clone https://github.com/AverageMarcus/uv3dp.git && \
    cd uv3dp && \
    go build -o /app/uv3dp ./cmd/uv3dp


FROM ubuntu:22.04
  COPY --from=UV3DP_BUILDER /app/uv3dp /usr/bin/

  ADD src/convert.sh /convert.sh

  RUN chmod +x /usr/bin/uv3dp /convert.sh

  ENV WATCH_DIRECTORY="/home"

  CMD ["/convert.sh"]
