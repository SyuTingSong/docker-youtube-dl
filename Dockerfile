FROM alpine:3.8

RUN apk add --no-cache ca-certificates youtube-dl && mkdir /download

ENV FORMAT="bestvideo[fps<=30][ext=mp4]+bestaudio[ext=m4a]"
ENV PROXY=socks5://shadowsocks:1080
ENV OUTPUT_FORMAT=mp4
ENV VIDEO_URL=""
ENV ARGS=""

WORKDIR /download

ADD run.sh /

ENTRYPOINT ["/run.sh"]
CMD ["/run.sh", "dl"]

