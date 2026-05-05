Start-Process -WindowStyle Hidden -FilePath "ffplay" -ArgumentList "-nodisp", "-volume", "70", "-infbuf", "https://stream.zeno.fm/f3wvbbqmdg8uv"
Write-Host "🎵 Lofi stream started in the background." -ForegroundColor Cyan
Write-Host "🛑 Use 'Stop-Process -Name ffplay' to stop the stream." -ForegroundColor Yellow
