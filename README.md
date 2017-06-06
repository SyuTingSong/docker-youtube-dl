## Usage

```bash
docker run --link shadowsocks \
    -v "$(pwd)":/download \
    -e PROXY=socks5://shadowsocks:1080 \
    -e VIDEO_URL=https://www.youtube.com/watch?v=fbhqg0pmJHw \
    -ti --rm syutingsong/youtube-dl
```
