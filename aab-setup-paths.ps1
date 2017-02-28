mkdir C:\home\$Env:USERNAME

Write-Host "$HOME -> C:\home\ctfhacker" -foregroundcolor "Green" -backgroundcolor "Black"
$newHome = 'C:\home\$Env:USERNAME'
[Environment]::SetEnvironmentVariable('home', "$($newHome)",'Machine');

pushd
cd C:\home\$Env:USERNAME
git clone --recursive https://github.com/ctfhacker/dotfiles
popd
