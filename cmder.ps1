Write-Host "Installing Cmder" -foreground "Green" -background "Black"
choco install -y cmder
Write-Host "Importing Cmder settings" -foreground "Green" -background "Black"
reg import Cmder.reg

git clone https://github.com/ctfhacker/cmder-dotfiles dotfiles
cd dotfiles
.\install.bat
