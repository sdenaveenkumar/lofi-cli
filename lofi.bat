@echo off
start /b ffplay -nodisp -volume 70 -infbuf https://stream.zeno.fm/f3wvbbqmdg8uv >nul 2>&1
echo 🎵 Lofi stream started in the background.
echo 🛑 Use 'taskkill /IM ffplay.exe /F' to stop the stream.
