#!/data/data/com.termux/files/usr/bin/bash

# Create log folder if it doesn't exist
mkdir -p memologs

# Get current date and time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")
LOGFILE="memologs/$DATE.txt"

# Launch Mistr Mintr
echo "Launching Mistr Mintr..."
echo "🧠 Mistr Mintr Activated."
echo -n "💭 What's on your mind, Fabo? "
read THOUGHT

# Format and save the entry
ENTRY="[$TIME] $THOUGHT"
echo "$ENTRY" >> "$LOGFILE"
echo "✅ Thought saved to $LOGFILE"

# Optional TTS feedback
echo "$THOUGHT" | termux-tts-speak
