mkdir C:\home\ctfhacker

Write-Host "$HOME -> C:\home\ctfhacker" -foregroundcolor "Green" -backgroundcolor "Black"
$newHome = 'C:\home\ctfhacker'
[Environment]::SetEnvironmentVariable('home', "$($newHome)",'Machine');

pushd
cd C:\home\ctfhacker
git clone --recursive https://github.com/ctfhacker/dotfiles
popd
