if(-Not (Get-Command choco -errorAction SilentlyContinue)){
    Set-ExecutionPolicy Unrestricted
    iex ((new-object system.net.webclient).downloadstring('https://chocolatey.org/install.ps1'))
}
Write-Host "Installing Cmder" -foregroundcolor "Green" -backgroundcolor "Black"
choco install -y cmder

Write-Host "Installing git" -foregroundcolor "Green" -backgroundcolor "Black"
choco install -y git
refreshenv

Write-Host "Installing Cmder dotfiles" -foregroundcolor "Green" -backgroundcolor "Black"
pushd
cd $HOME
& "C:\Program Files\Git\bin\git.exe" clone https://github.com/ctfhacker/cmder-dotfiles dotfiles
cd dotfiles
.\install.bat
sleep 500
popd
