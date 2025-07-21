#!/data/data/com.termux/files/usr/bin/bash

quote=$(shuf -n 1 quotes.txt 2>/dev/null || echo "You need to add some quotes to quotes.txt first.")
echo "📜 Today's Memory Stone quote:"
echo "💬 $quote"
