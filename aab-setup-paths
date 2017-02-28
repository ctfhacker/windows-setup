mkdir C:\home\$USERNAME

Write-Host "$HOME -> C:\home\ctfhacker" -foregroundcolor "Green" -backgroundcolor "Black"
$newHome = 'C:\home\$USERNAME'
[Environment]::SetEnvironmentVariable('home', "$($newHome)",'Machine');

pushd
cd C:\home\$USERNAME
git clone --recursive https://github.com/ctfhacker/dotfiles
popd
