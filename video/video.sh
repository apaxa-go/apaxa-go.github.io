#!/bin/bash

ffmpeg -i ./site-demo-2.mov -i ./bensound-summer.mp3 -shortest -filter:a "volume=0.1,afade=t=in:ss=0:d=4,afade=t=out:st=53:d=4" -filter:v "fade=in:s=0:d=4:c=#DDDDDD,fade=out:st=53:d=4:c=#DDDDDD" -t 57 res.mp4
ffmpeg -i ./site-demo-2.mov -i ./bensound-summer.mp3 -shortest -filter:a "volume=0.1,afade=t=in:ss=0:d=4,afade=t=out:st=53:d=4" -filter:v "fade=in:s=0:d=4:c=#DDDDDD,fade=out:st=53:d=4:c=#DDDDDD" -t 57 -c:v libvpx-vp9 -strict experimental res.webm