#!/data/data/com.termux/files/usr/bin/bash

clear
echo "🌐 Welcome to DevsVaultsPro Terminal"
echo "Choose an option:"
echo "a) Start Mistr Mintr (Memory Logger)"
echo "b) View Memory Log"
echo "c) Daily Log"
echo "d) Check Crypto Prices"
echo "e) Open Scratchpad"
echo "f) Mood Tracker"
echo "g) Welfare Drop Check (Thursdays)"
echo "x) Exit"
echo
read -p "> " choice

case "$choice" in
  a)
    echo "Launching Mistr Mintr..."
    echo "🧠 Mistr Mintr Activated."
    read -p "💭 What's on your mind, Fabo? " thought
    echo "$thought" >> memolog.txt
    echo "✅ Thought saved to memolog.txt."
    ;;
  b)
    cat memolog.txt
    ;;
  c)
    date "+📅 %A, %d %B %Y" >> dailylog.txt
    read -p "📝 Log something for today: " daily
    echo "$daily" >> dailylog.txt
    echo "✅ Logged to dailylog.txt"
    ;;
  d)
    echo "📈 Getting Crypto Prices..."
    curl -s https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd | jq
    ;;
  e)
    nano scratch.py
    ;;
  f)
    read -p "How you feelin'? (😃 😐 😢 😡): " mood
    echo "$(date): $mood" >> moodlog.txt
    echo "✅ Mood logged."
    ;;
  g)
    day=$(date +%A)
    if [ "$day" = "Thursday" ]; then
      echo "🎉 Did you get your welfare?"
      read -p "(y/n) > " welfare
      if [ "$welfare" = "y" ]; then
        echo "Hahaha koji si ti welfare Junkie 😂"
      else
        echo "💸 No worries, next week is coming..."
      fi
    else
      echo "⏳ It's not Thursday yet."
    fi
    ;;
  x)
    echo "👋 Exiting. Stay productive!"
    exit
    ;;
  *)
    echo "❌ Invalid option. Try again."
    ;;
esac
echo "1. 🧠 Mistr Mintr"
echo "2. ✍️ Eidolon Notes"
echo "3. 🎯 Welfare Drop Alert"
echo "4. 🗿 Memory Stone"
read -p "Choose an option: " choice

case $choice in
  1) bash mistr_mintr.sh ;;
  2) bash eidolon_notes.sh ;;
  3) bash welfare_alert.sh ;;
  4) bash memory_stone.sh ;;
  *) echo "❓ Invalid choice" ;;
esac
