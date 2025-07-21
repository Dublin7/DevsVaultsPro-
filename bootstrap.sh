#!/bin/bash

echo "🔧 Setting up DevsVaultsPro..."
pkg update -y && pkg upgrade -y
pkg install -y git curl python nodejs

echo "✅ Packages installed."
echo "📦 Cloning repo..."
git clone https://github.com/YOUR_USERNAME/DevsVaultsPro.git ~/devsvaultspro

cd ~/devsvaultspro
echo "🚀 Ready to roll."