#!/bin/bash
nohup ffplay -nodisp -volume 70 -infbuf https://stream.zeno.fm/f3wvbbqmdg8uv >/dev/null 2>&1 &
echo "🎵 Lofi stream started in the background."
echo "🛑 Use 'pkill ffplay' to stop the stream."
