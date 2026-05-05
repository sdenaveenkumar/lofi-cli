<div align="center">
  <h1>🎧 Lofi CLI</h1>
  <p>Your minimalist, background Lofi radio player straight from the terminal.</p>
  
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![Platform: Mac & Linux](https://img.shields.io/badge/Platform-Mac%20%7C%20Linux-blue.svg)](#)
</div>

---

## 🌟 Overview

> **🚧 Note:** Currently, Lofi CLI is only available for Mac and Linux. Support for Windows is coming soon!

**Lofi CLI** is a simple, lightweight set of scripts that plays a continuous Lofi hip hop radio stream in the background. It uses `ffplay` (part of the FFmpeg suite) to stream audio without any visual display, keeping your terminal and desktop clutter-free while you focus.

## 🚀 Prerequisites

To use this script, you must have **FFmpeg** installed on your system.

```bash
brew install ffmpeg
```

---

## 💻 Installation & Usage

**Option 1: Using the Script (Requires downloading the repo)**
1. Clone the repository and navigate into it:
   ```bash
   git clone https://github.com/yourusername/lofi-cli.git
   cd lofi-cli
   ```
2. Make the script executable:
   ```bash
   chmod +x lofi.sh
   ```
3. Run it:
   ```bash
   ./lofi.sh
   ```
4. **To stop the stream:**
   ```bash
   pkill ffplay
   ```

**Option 2: Using Aliases (The Seamless Way - No download required!)**
Add these commands to your terminal profile so you can type `lofi` from anywhere.
1. Open your configuration file (e.g., `nano ~/.zshrc` or `nano ~/.bashrc`).
2. Paste the following at the bottom of the file:
   ```bash
   alias lofi='nohup ffplay -nodisp -volume 70 -infbuf https://stream.zeno.fm/f3wvbbqmdg8uv >/dev/null 2>&1 &'
   alias stop='pkill ffplay'
   ```
3. Save the file and restart your terminal (or run `source ~/.zshrc`).
4. Type `lofi` to start the music. Type `stop` to end it.


---

## 🛠️ How it Works
The core command under the hood is:
```bash
ffplay -nodisp -volume 70 -infbuf https://stream.zeno.fm/f3wvbbqmdg8uv
```
- `-nodisp`: Disables graphical display (audio only).
- `-volume 70`: Sets startup volume to 70%.
- `-infbuf`: Keeps reading the infinite stream buffer without dropping out.
- The scripts use native OS features (`nohup &` on Mac/Linux) to hide the command prompt window and run the process silently in the background.

---

<div align="center">
  <i>Happy Coding! ☕</i>
</div>
