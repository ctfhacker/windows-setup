Write-Host "Installing Cmder" -foregroundcolor "Green" -backgroundcolor "Black"
choco install -y cmder
Write-Host "Importing Cmder settings" -foregroundcolor "Green" -backgroundcolor "Black"
reg import Cmder.reg

git clone https://github.com/ctfhacker/cmder-dotfiles dotfiles
cd dotfiles
.\install.bat
cd ..
