if(-Not (Get-Command choco -errorAction SilentlyContinue)){
    Set-ExecutionPolicy Unrestricted
    iex ((new-object system.net.webclient).downloadstring('https://chocolatey.org/install.ps1'))
}
Write-Host "Installing Cmder" -foregroundcolor "Green" -backgroundcolor "Black"
choco install -y cmder

Write-Host "Installing git" -foregroundcolor "Green" -backgroundcolor "Black"
choco install -y git

Write-Host "Installing Cmder dotfiles" -foregroundcolor "Green" -backgroundcolor "Black"
pushd
cd $HOME
git clone https://github.com/ctfhacker/cmder-dotfiles dotfiles
cd dotfiles
.\install.bat
popd
