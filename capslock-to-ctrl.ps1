echo "Remapping CapsLock to Ctrl"
reg add "HKLM\System\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 0000000000000000020000001d003a0000000000
