print("🧠 Mistr Mintr Activated.")
memory = input("💭 What's on your mind, Fabo? \n> ")

with open("memolog.txt", "a") as f:
    f.write(memory + "\n")

print("✅ Thought saved to memolog.txt.")
