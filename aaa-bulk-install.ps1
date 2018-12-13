if(-Not (Get-Command choco -errorAction SilentlyContinue)){
    Set-ExecutionPolicy Unrestricted
    iex ((new-object system.net.webclient).downloadstring('https://chocolatey.org/install.ps1'))
}

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
choco install -y python3
choco install -y sysinternals
choco install -y wget
choco install -y windows-sdk-8.1
choco install -y windows-sdk-10.1
choco install -y vim --version 7.4.2066
choco install -y VisualStudio2017Community
choco install -y vcbuildtools
choco install -y visualstudio2017buildtools
choco install -y unzip

wget "https://cmake.org/files/v3.9/cmake-3.9.0-win32-x86.msi"
msiexec /i cmake-3.9.0-win32-x86.msi /norestart /quiet /qn
rm cmake-3.9.0-win32-x86.msi
