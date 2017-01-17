choco install -y windbg
echo "Installing pykd"
pip2 install pykd
pip3 install pykd
((new-object system.net.webclient).downloadfile('https://github.com/ctfhacker/windows-setup/raw/master/pykd-dlls/x86/pykd.dll', 'C:\Program Files\Windows Kits\8.1\Debuggers\x86\winext\pykd.dll'))
((new-object system.net.webclient).downloadfile('https://github.com/ctfhacker/windows-setup/raw/master/pykd-dlls/x64/pykd.dll', 'C:\Program Files\Windows Kits\8.1\Debuggers\x64\winext\pykd.dll'))
