Write-Host "Installing Cmder" -foregroundcolor "Green" -backgroundcolor "Black"
choco install -y cmder
Write-Host "Importing Cmder settings" -foregroundcolor "Green" -backgroundcolor "Black"
reg import Cmder.reg

pushd
cd $HOME
git clone https://github.com/ctfhacker/cmder-dotfiles dotfiles
cd dotfiles
.\install.bat
popd
