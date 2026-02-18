Output docs/tapes/demo-fnox-secrets.gif

Set Shell "bash"
Set FontSize 16
Set Width 1200
Set Height 450
Set Theme "Catppuccin Mocha"
Set Padding 24
Set CursorBlink false
Set TypingSpeed 70ms
Set WindowBar Colorful

Hide
Type `eval "$(mise activate bash)"`
Enter
Type `eval "$(fnox activate bash)"`
Enter
Type "alias bat='mise exec bat -- bat'"
Enter
Type "cd .."
Enter
Type "unset DB_USERNAME"
Enter
Type "clear"
Enter
Sleep 2s

# Show the encrypted config — the key selling point
Show
Type "bat gold/fnox.toml"
Enter
Sleep 5s

# ── Step 2: enter project ────────────────────────────────
Type "cd gold"
Enter
Sleep 2s

Type `echo "DB_USERNAME = $DB_USERNAME"`
Enter
Sleep 2s

# ── Step 3: leave project ────────────────────────────────
Type "cd .."
Enter
Type `echo "DB_USERNAME = $DB_USERNAME"`
Enter
Sleep 6s
