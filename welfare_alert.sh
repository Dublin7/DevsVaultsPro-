#!/data/data/com.termux/files/usr/bin/bash

day=$(date '+%A')
hour=$(date '+%H')

if [[ "$day" == "Thursday" && "$hour" == "09" ]]; then
  echo "🎯 Did you get your welfare?"
  read -p "➡️ Type YES if you got it: " answer
  if [[ "$answer" == "YES" || "$answer" == "yes" ]]; then
    echo -e "\n🎉🎉🎉 Confetti Explosion!!! 🎉🎉🎉"
    echo "😂 Hahaha koji si ti welfare Junkie"
  else
    echo "⏳ Ok, check again later!"
  fi
else
  echo "📅 Not the right time yet. Come back Thursday at 9AM."
fi
