#!/bin/sh
CMD=$1
case $CMD in
    list)
        youtube-dl --proxy $PROXY -F $VIDEO_URL
        ;;
    dl)
        youtube-dl --proxy $PROXY -f $FORMAT --merge-output-format \
        $OUTPUT_FORMAT $VIDEO_URL
        ;;
    *)
        exec $@
        ;;
esac
