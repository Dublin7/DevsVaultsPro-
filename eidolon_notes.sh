#!/data/data/com.termux/files/usr/bin/bash

echo "🔒 Eidolon Notes Activated"
read -p "Enter your secret note: " note
timestamp=$(date '+%Y-%m-%d %H:%M:%S')
echo "$timestamp :: $note" >> eidolon_notes.txt
echo "✅ Note saved to eidolon_notes.txt"
