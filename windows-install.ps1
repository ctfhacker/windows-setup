choco install -y windbg
choco install -y cmder
choco install -y vcredist2005
choco install -y vcredist2008
choco install -y vcredist2010
choco install -y vcredist2012
choco install -y vcredist2013
choco install -y vcredist2015
choco install -y googlechrome
choco install -y dotnet3.5
choco install -y dotnet4.5.2
choco install -y dotnet4.6.1
choco install -y 7zip.commandline
choco install -y curl
choco install -y git
choco install -y python2
choco install -y sysinternals
choco install -y wget
choco install -y windows-sdk-8.1
choco install -y windows-sdk-10.1
choco install -y visualstudio2012professional
choco install -y cmake

echo "Installing pykd"
pip2 install pykd
pip3 install pykd
((new-object system.net.webclient).downloadfile('https://github.com/ctfhacker/windows-dotfiles/raw/master/pykd-dlls/x86/pykd.dll', 'C:\Program Files\Windows Kits\8.1\Debuggers\x86\winext\pykd.dll'))
((new-object system.net.webclient).downloadfile('https://github.com/ctfhacker/windows-dotfiles/raw/master/pykd-dlls/x64/pykd.dll', 'C:\Program Files\Windows Kits\8.1\Debuggers\x64\winext\pykd.dll'))

echo "Remapping CapsLock to Ctrl"
reg add "HKLM\System\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 0000000000000000020000001d003a0000000000

echo "Importing Cmder settings"
((New-Object System.Net.WebClient).DownloadFile('http://ctfhacker.com/cmder.reg', 'C:\Windows\Temp\Cmder.reg'))
reg import Cmder.reg
